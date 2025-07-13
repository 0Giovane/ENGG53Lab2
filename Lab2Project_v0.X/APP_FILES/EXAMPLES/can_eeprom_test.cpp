#include "examples.hpp"

void canEepromTest()
{
    Eeprom24cxx memory;          memory.init();
    CanProtocol can_protocol;   can_protocol.init();
    DebugUart debug_uart;       debug_uart.init();
    
    user_t user1 = {0};
    strcpy((char*)user1.login, "1234");
    strcpy((char*)user1.password, "5678");
    user1.is_blocked = 0;
    user1.is_admin = 1;
    user1.last_access = ONE;
    
    user_t user2 = {0};
    strcpy((char*)user2.login, "9111");
    strcpy((char*)user2.password, "6222");
    user2.is_blocked = 1;
    user2.is_admin = 0;
    user2.last_access = FOUR;
    
    packedUser_t packed1 = packUser(user1);
    packedUser_t packed2 = packUser(user2);
    
    uint32_t id_msg = 0;
    can_protocol.buildMessageId(BOARD_ID, ADD, id_msg);  //max 11 bits to can id

    uint8_t MAX_MSG = 2;
            
    uint32_t id = id_msg;
    uint8_t size = 5;
    uint8_t can_data[MAX_MSG][5] = {};
    memcpy(can_data[0], &packed1, sizeof(packedUser_t));
    memcpy(can_data[1], &packed2, sizeof(packedUser_t));
    
    uint32_t rx_id = 0;
    uint8_t rx_size = 0;
    uint8_t rx_data[8] = {0};
    uint16_t timestamp = 0;
        
    can_protocol.setTxFlag();
    can_protocol.setRxFlag();
    
    uint8_t i = 0;
         
    while ( true )
    {  
        SYS_Tasks ( );
        
        LED_L1_Clear();
        LED_L2_Clear();
        LED_L3_Clear();
        LED_L4_Clear();
        LED_TEST_Clear();
        
        CORETIMER_DelayMs(1000);
        
        if (can_protocol.isTxDone())
        {
            if (can_protocol.write(id, size, can_data[i]))
            {
                LED_L1_Set();
                can_protocol.resetTxFlag();
            }
            else
            {
                LED_L2_Set();
            }
        }
        
        CORETIMER_DelayMs(100);
        
        if (can_protocol.isRxDone())
        {            
            if (can_protocol.read(&rx_id, &rx_size, rx_data, &timestamp))
            {
                LED_L3_Set();
                can_protocol.resetRxFlag();

                if ((rx_id == id) && (rx_size == size) && (memcmp(rx_data, can_data[i], size) == 0))
                {
                    packedUser_t packed_save;
                    memcpy(&packed_save, rx_data, sizeof(packedUser_t));
                    if(memory.writeToIndex(i, &packed_save,sizeof(packedUser_t)))
                    {
                        LED_TEST_Set();
                    }
                    else
                    {
                        i--;
                    }
                }
                else
                {
                    LED_L4_Set();
                }
                
                i++;     
                if(i > MAX_MSG-1)
                {
                    break;
                }
                else
                {
                    can_protocol.setRxFlag();
                }
            }
        }
        
        CORETIMER_DelayMs(100);   
    }
    
    can_protocol.setTxFlag();
    
    /*
     * TODO: implementar forma de ver todos os dados
     */
}