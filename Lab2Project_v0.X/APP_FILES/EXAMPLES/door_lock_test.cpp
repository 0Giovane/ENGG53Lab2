#include "examples.hpp"

void doorLockTest()
{
    DebugUart debug_uart;
    debug_uart.init();

    DoorLock door_lock(GPIO_PIN_RE0);
    door_lock.init();

    const uint16_t open_duration_ms = MAX_OPEN_TIMER_MS;
    uint16_t last_remaining = 0xFFFF;
    
    char ch = 0;
    
    debug_uart.print("SALA 4 : [1] abrir  [2] fechar\r\n");

    while (true)
    {
        SYS_Tasks();            
        
        door_lock.update();

        if (door_lock.isOpen())
{
            LED_TEST_Set();
        }
        else
        {
            LED_TEST_Clear();
        }
    
        if (door_lock.isOpen())
        {
            uint16_t remaining = open_duration_ms - door_lock.getDelayCounter();
            if (remaining != last_remaining)
            {
                last_remaining = remaining;

                char buf[64];
                snprintf(buf, sizeof(buf), "[INFO] Fechando em %u ms\r\n", remaining);
                debug_uart.print(buf);
            }
        }
        
        if (debug_uart.byteRead((uint8_t *)&ch))
        {
            if (ch == '1')
            {
                door_lock.open(open_duration_ms);
            }
            else if (ch == '2')
            {
                door_lock.close();
            }
            
            debug_uart.print("SALA 4 : [1] abrir  [2] fechar\r\n");
        }
    }
}
