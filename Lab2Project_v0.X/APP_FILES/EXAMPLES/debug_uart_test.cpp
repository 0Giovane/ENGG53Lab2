#include "examples.hpp"

void debugUartTest()
{
    DebugUart debug_uart;
    debug_uart.init();

    uint8_t ch = 0;

    while (true)
    {
        SYS_Tasks();          
      
        if (debug_uart.byteRead(&ch))
        {
            debug_uart.write(&ch, 1);
            LED_TEST_Set();
        }
        else
        {
            LED_TEST_Clear();
        }

        delayMs(1);
    }
}
