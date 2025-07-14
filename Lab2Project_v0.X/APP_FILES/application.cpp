#include "application.hpp"

void application()
{
    DoorLock door_lock(GPIO_PIN_RE0);   door_lock.init();
    LcdDrvSt7920 lcd_driver;            lcd_driver.init();
    Lcd12864 display(lcd_driver);       display.init();
    Keypad keypad;                      keypad.init();
    Eeprom24cxx memory;                 memory.init();
    CanProtocol can_protocol;           can_protocol.init();
    DebugUart debug_uart;               debug_uart.init();      // ATTENTION!! baudrate = 115200

    UserManager user_manager(door_lock, display, keypad, memory, can_protocol, debug_uart);
    user_manager.init();
    
    while ( true )
    {
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        SYS_Tasks ( );
        
        keypad.update();
        display.update();
        memory.update();
        door_lock.update();
        can_protocol.update();
        
        user_manager.update();
        
    }
    
    return;
}