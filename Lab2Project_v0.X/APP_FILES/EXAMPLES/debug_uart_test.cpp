#include "examples.hpp"

void debugUartTest()
{
    DebugUart debug_uart;   
    debug_uart.init();
    
//    DoorLock door_lock(GPIO_PIN_RE0);
//    door_lock.init();
    
    debug_uart.print("\r\nTestando metodo print!\r\n");
    
//    const char* msg_board_id = "\r\nSALA 4: [1] Abrir [2] Fechar\r\n";
//    const char* msg_enter    = "\r\nAbrir!\r\n";
//    const char* msg_exit     = "\r\nFechar!\r\n";
//    const char* msg_invalid  = "\r\nInvalid Command!\r\n";
//    uint8_t rx_buffer[1];
//    
//    bool input_flag = false;
//        
//    debug_uart.write((uint8_t*)msg_board_id, strlen(msg_board_id));
//    debug_uart.resetTxFlag();
     
    while (true)
    {
        SYS_Tasks();
        
        debug_uart.update();

//        if (!input_flag && debug_uart.isTxDone())
//        {
//            debug_uart.resetTxFlag();
//            debug_uart.read(rx_buffer, sizeof(rx_buffer));
//            input_flag = true;
//        }
//
//        if (debug_uart.isRxDone())
//        {
//            debug_uart.resetRxFlag();
//            input_flag = false;
//
//            if (rx_buffer[0] == '1')
//            {
//                door_lock.open();
//                debug_uart.write((uint8_t*)msg_enter, strlen(msg_enter));
//            }
//            else if (rx_buffer[0] == '2')
//            {
//                door_lock.close();
//                debug_uart.write((uint8_t*)msg_exit, strlen(msg_exit));
//            }
//            else
//            {
//                door_lock.close();
//                debug_uart.write((uint8_t*)msg_invalid, strlen(msg_invalid));
//            }
//
//            debug_uart.resetTxFlag();
//        }
//
//        CORETIMER_DelayMs(10);
    }
}