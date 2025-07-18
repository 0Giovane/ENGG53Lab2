#include "examples.hpp"

void codecUserTest()
{
    DebugUart debug_uart;   
    debug_uart.init();
    
    user_t user = {0};
    strcpy((char*)user.login, "1234");
    strcpy((char*)user.password, "5678");
    user.is_blocked = 0;
    user.is_admin = 1;
    user.last_access = FOUR;

    char buffer[64];

    snprintf(buffer, sizeof(buffer), "Original: %s / %s / adm=%d / blk=%d / room=%d\r\n",
         user.login,
         user.password,
         user.is_blocked,
         user.is_admin,
         user.last_access);
    debug_uart.write((uint8_t*)buffer, strlen(buffer));
    while (!debug_uart.isTxDone());
    debug_uart.resetTxFlag();

    packedUser_t packed = packUser(user);
    snprintf(buffer, sizeof(buffer), "Packed: %02X %02X %02X %02X %02X\r\n",
         packed.login[0], packed.login[1],
         packed.password[0], packed.password[1],
         packed.flags);
    debug_uart.write((uint8_t*)buffer, strlen(buffer));
    while (!debug_uart.isTxDone());
    debug_uart.resetTxFlag();

    user_t unpacked = unpackUser(packed);
    snprintf(buffer, sizeof(buffer), "Unpacked: %s / %s / adm=%d / blk=%d / room=%d\r\n",
         unpacked.login,
         unpacked.password,
         unpacked.is_blocked,
         unpacked.is_admin,
         unpacked.last_access);
    debug_uart.write((uint8_t*)buffer, strlen(buffer));
    while (!debug_uart.isTxDone());
    debug_uart.resetTxFlag();
}
