#include "examples.hpp"

typedef enum
{
    INIT,
    PRINT_DEBUG_SIZE,
    PRINT_DEBUG_SIZE_WAIT,
    PRINT_TEST_START,
    PRINT_TEST_START_WAIT,
    CLEAR_EEPROM_WRITE,
    CLEAR_EEPROM_WRITE_WAIT,
    CLEAR_EEPROM_DONE_PRINT,
    CLEAR_EEPROM_DONE_PRINT_WAIT,
    USER_CREATE_WRITE,
    USER_CREATE_WRITE_WAIT,
    USER_CREATED_PRINT,
    USER_CREATED_PRINT_WAIT,
    USER_SEND_CAN,
    USER_SEND_CAN_WAIT,
    USER_SENT_PRINT,
    USER_SENT_PRINT_WAIT,
    USER_RECEIVE_CAN,
    USER_RECEIVE_CAN_PROCESS,
    USER_RECEIVE_CAN_WRITE,
    USER_RECEIVE_CAN_WRITE_WAIT,
    USER_RECEIVED_PRINT,
    USER_RECEIVED_PRINT_WAIT,
    READ_EEPROM_SLOT0,
    READ_EEPROM_SLOT1,
    READ_EEPROM_PRINT_RAW_0,
    READ_EEPROM_PRINT_RAW_0_WAIT,
    READ_EEPROM_PRINT_RAW_1,
    READ_EEPROM_PRINT_RAW_1_WAIT,
    READ_EEPROM_PRINT_UNPACKED_0,
    READ_EEPROM_PRINT_UNPACKED_0_WAIT,
    READ_EEPROM_PRINT_UNPACKED_1,
    READ_EEPROM_PRINT_UNPACKED_1_WAIT,
    PRINT_TEST_DONE,
    PRINT_TEST_DONE_WAIT,
    DONE
} state_t;

void canEepromTest()
{
    DebugUart debug_uart;
    Eeprom24cxx memory;
    CanProtocol can_protocol;

    state_t state = INIT;

    packedUser_t zero = {0};
    uint16_t clear_slot = 0;

    user_t user;
    packedUser_t packed;
    packedUser_t received_packed;
    canMessage_t rx_msg;

    user_t received_user;

    while( true )
    {
        SYS_Tasks ( );
        
        memory.update();
        can_protocol.update();

        switch(state)
        {
            case INIT:
            {
                debug_uart.init();
                memory.init();
                can_protocol.init();
                state = PRINT_DEBUG_SIZE;
                break;
            }
            case PRINT_DEBUG_SIZE:
            {
                char buf[64];
                snprintf(buf, sizeof(buf), "[PRINT_DEBUG_SIZE] packedUser_t size = %u bytes\r\n", (unsigned)sizeof(packedUser_t));
                debug_uart.print(buf);
                state = PRINT_DEBUG_SIZE_WAIT;
                break;
            }
            case PRINT_DEBUG_SIZE_WAIT:
            {
                if (debug_uart.isTxDone())
                {
                    debug_uart.resetTxFlag();
                    state = PRINT_TEST_START;
                }
                break;
            }
            case PRINT_TEST_START:
            {
                debug_uart.print("[PRINT_TEST_START] Iniciando teste codec CAN + EEPROM\r\n");
                state = PRINT_TEST_START_WAIT;
                break;
            }
            case PRINT_TEST_START_WAIT:
            {
                if (debug_uart.isTxDone())
                {
                    debug_uart.resetTxFlag();
                    clear_slot = 0;
                    state = CLEAR_EEPROM_WRITE;
                }
                break;
            }
            case CLEAR_EEPROM_WRITE:
            {
                if (!memory.isBusy()) {
                    if (clear_slot < 20) {
                        memory.writeToIndex(clear_slot, &zero, sizeof (packedUser_t));
                        clear_slot++;
                        state = CLEAR_EEPROM_WRITE_WAIT;
                    } else {
                        state = CLEAR_EEPROM_DONE_PRINT;
                    }
                }
                break;
            }
            case CLEAR_EEPROM_WRITE_WAIT:
            {
                if (!memory.isBusy()) {
                    state = CLEAR_EEPROM_WRITE;
                }
                break;
            }
            case CLEAR_EEPROM_DONE_PRINT:
            {
                debug_uart.print("[CLEAR_EEPROM_DONE_PRINT] EEPROM com 20 posicoes zeradas (0 a 19)\r\n");
                state = CLEAR_EEPROM_DONE_PRINT_WAIT;
                break;
            }
            case CLEAR_EEPROM_DONE_PRINT_WAIT:
            {
                if (debug_uart.isTxDone()) {
                    debug_uart.resetTxFlag();
                    state = USER_CREATE_WRITE;
                }
                break;
            }
            case USER_CREATE_WRITE:
            {
                memset(&user, 0, sizeof (user));
                strncpy((char*) user.login, "1234", sizeof (user.login));
                strncpy((char*) user.password, "5678", sizeof (user.password));
                user.is_blocked = 0;
                user.is_admin = 1;
                user.last_access = FOUR;
                packed = packUser(user);

                if (!memory.isBusy()) 
                {
                    memory.writeToIndex(0, &packed, sizeof (packedUser_t));
                    state = USER_CREATE_WRITE_WAIT;
                }
                break;
            }
            case USER_CREATE_WRITE_WAIT:
            {
                if (!memory.isBusy()) 
                {
                    state = USER_CREATED_PRINT;
                }
                break;
            }
            case USER_CREATED_PRINT:
            {
                debug_uart.print("[USER_CREATED_PRINT] Usuario original salvo no slot 0\r\n");
                state = USER_CREATED_PRINT_WAIT;
                break;
            }
            case USER_CREATED_PRINT_WAIT:
            {
                if (debug_uart.isTxDone()) {
                    debug_uart.resetTxFlag();
                    state = USER_SEND_CAN;
                }
                break;
            }
            case USER_SEND_CAN:
            {
                if (!memory.isBusy() && can_protocol.enqueueTx(0x123, sizeof (packedUser_t), (uint8_t*) & packed)) 
                {
                    state = USER_SEND_CAN_WAIT;
                }
                break;
            }
            case USER_SEND_CAN_WAIT:
            {
                state = USER_SENT_PRINT;
                break;
            }
            case USER_SENT_PRINT:
            {
                debug_uart.print("[USER_SENT_PRINT] Usuario enviado via CAN (loopback)\r\n");
                state = USER_SENT_PRINT_WAIT;
                break;
            }
            case USER_SENT_PRINT_WAIT:
            {
                if (debug_uart.isTxDone()) 
                {
                    debug_uart.resetTxFlag();
                    state = USER_RECEIVE_CAN;
                }
                break;
            }
            case USER_RECEIVE_CAN:
            {
                if (can_protocol.hasRxMessage()) 
                {
                    if (can_protocol.dequeueRxMessage(rx_msg) && rx_msg.length == sizeof (packedUser_t)) 
                    {
                        memcpy(&received_packed, rx_msg.data, sizeof (packedUser_t));
                        state = USER_RECEIVE_CAN_PROCESS;
                    }
                }
                break;
            }
            case USER_RECEIVE_CAN_PROCESS:
            {
                received_user = unpackUser(received_packed);
                received_user.is_admin = 0;
                received_user.is_blocked = 1;
                received_packed = packUser(received_user);

                char buffer[128];
                snprintf(buffer, sizeof (buffer),
                        "[USER_RECEIVE_CAN_PROCESS] a salvar: %02X %02X %02X %02X %02X\r\n",
                        received_packed.login[0], received_packed.login[1],
                        received_packed.password[0], received_packed.password[1],
                        received_packed.flags);
                debug_uart.print(buffer);
                state = USER_RECEIVE_CAN_WRITE;
                break;
            }
            case USER_RECEIVE_CAN_WRITE:
            {
                if (debug_uart.isTxDone()) 
                {
                    debug_uart.resetTxFlag();
                    if (!memory.isBusy()) 
                    {
                        memory.writeToIndex(1, &received_packed, sizeof (packedUser_t));
                        state = USER_RECEIVE_CAN_WRITE_WAIT;
                    }
                }
                break;
            }
            case USER_RECEIVE_CAN_WRITE_WAIT:
            {
                if (!memory.isBusy()) 
                {
                    state = USER_RECEIVED_PRINT;
                }
                break;
            }
            case USER_RECEIVED_PRINT:
            {
                debug_uart.print("[USER_RECEIVED_PRINT] Usuario recebido do CAN salvo no slot 1 (admin=0, is_blocked=1)\r\n");
                state = USER_RECEIVED_PRINT_WAIT;
                break;
            }
            case USER_RECEIVED_PRINT_WAIT:
            {
                if (debug_uart.isTxDone()) 
                {
                    debug_uart.resetTxFlag();
                    state = READ_EEPROM_SLOT0;
                }
                break;
            }
            case READ_EEPROM_SLOT0:
            {
                if (!memory.isBusy()) 
                {
                    memory.readFromIndex(0, &packed, sizeof (packedUser_t));
                    state = READ_EEPROM_SLOT1;
                }
                break;
            }
            case READ_EEPROM_SLOT1:
            {
                if (!memory.isBusy()) 
                {
                    memory.readFromIndex(1, &received_packed, sizeof (packedUser_t));
                    state = READ_EEPROM_PRINT_RAW_0;
                }
                break;
            }
            case READ_EEPROM_PRINT_RAW_0:
            {
                char buffer[128];
                snprintf(buffer, sizeof(buffer),
                         "[READ_EEPROM_PRINT_RAW_0] Slot 0: %02X %02X %02X %02X %02X\r\n",
                         packed.login[0], packed.login[1], packed.password[0], packed.password[1], packed.flags);
                debug_uart.print(buffer);
                state = READ_EEPROM_PRINT_RAW_0_WAIT;
                break;
            }
            case READ_EEPROM_PRINT_RAW_0_WAIT:
            {
                if (debug_uart.isTxDone()) 
                {
                    debug_uart.resetTxFlag();
                    state = READ_EEPROM_PRINT_RAW_1;
                }
                break;
            }
            case READ_EEPROM_PRINT_RAW_1:
            {
                char buffer[128];
                snprintf(buffer, sizeof(buffer),
                         "[READ_EEPROM_PRINT_RAW_1] Slot 1: %02X %02X %02X %02X %02X\r\n",
                         received_packed.login[0], received_packed.login[1], received_packed.password[0], 
                         received_packed.password[1], received_packed.flags);
                debug_uart.print(buffer);
                state = READ_EEPROM_PRINT_RAW_1_WAIT;
                break;
            }
            case READ_EEPROM_PRINT_RAW_1_WAIT:
            {
                if (debug_uart.isTxDone()) 
                {
                    debug_uart.resetTxFlag();
                    state = READ_EEPROM_PRINT_UNPACKED_0;
                }
                break;
            }
            case READ_EEPROM_PRINT_UNPACKED_0:
            {
                user_t u0 = unpackUser(packed);
                char buffer[128];
                snprintf(buffer, sizeof(buffer),
                         "[READ_EEPROM_PRINT_UNPACKED_0] Slot 0: login=%s / senha=%s / adm=%d / blk=%d / room=%d\r\n",
                         u0.login, u0.password, u0.is_admin, u0.is_blocked, u0.last_access+1);
                debug_uart.print(buffer);
                state = READ_EEPROM_PRINT_UNPACKED_0_WAIT;
                break;
            }
            case READ_EEPROM_PRINT_UNPACKED_0_WAIT:
            {
                if (debug_uart.isTxDone()) 
                {
                    debug_uart.resetTxFlag();
                    state = READ_EEPROM_PRINT_UNPACKED_1;
                }
                break;
            }
            case READ_EEPROM_PRINT_UNPACKED_1:
            {
                user_t u1 = unpackUser(received_packed);
                char buffer[128];
                snprintf(buffer, sizeof(buffer),
                         "[READ_EEPROM_PRINT_UNPACKED_1] Slot 1: login=%s / senha=%s / adm=%d / blk=%d / room=%d\r\n",
                         u1.login, u1.password, u1.is_admin, u1.is_blocked, u1.last_access+1);
                debug_uart.print(buffer);
                state = READ_EEPROM_PRINT_UNPACKED_1_WAIT;
                break;
            }
            case READ_EEPROM_PRINT_UNPACKED_1_WAIT:
            {
                if (debug_uart.isTxDone()) 
                {
                    debug_uart.resetTxFlag();
                    state = PRINT_TEST_DONE;
                }
                break;
            }
            case PRINT_TEST_DONE:
            {
                debug_uart.print("[PRINT_TEST_DONE] Teste concluido!\r\n\n");
                state = PRINT_TEST_DONE_WAIT;
                break;
            }
            case PRINT_TEST_DONE_WAIT:
            {
                if (debug_uart.isTxDone()) 
                {
                    debug_uart.resetTxFlag();
                    state = DONE;
                }
                break;
            }
            case DONE: 
            {
                LED_L1_Set();
                LED_L2_Set();
                LED_L3_Set();
                LED_L4_Set();
                break;
            }
        }
    }
}