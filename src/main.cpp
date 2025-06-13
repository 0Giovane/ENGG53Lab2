/*******************************************************************************
  Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This file contains the "main" function for a project.

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes

#include "../Lab2Project_v0.X/APP_FILES/lcd_drv_st7920.hpp"
#include "../Lab2Project_v0.X/APP_FILES/debug_uart.hpp"
#include "../Lab2Project_v0.X/APP_FILES/i2c_eeprom.hpp"
#include "../Lab2Project_v0.X/APP_FILES/application_types.hpp"
#include "../Lab2Project_v0.X/APP_FILES/application.hpp"
#include "../Lab2Project_v0.X/APP_FILES/keypad.hpp"
#include "../Lab2Project_v0.X/APP_FILES/keyboard.h"
// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    LED_TEST_Set();
 
    I2cEeprom MEMORY;
    LcdDrvSt7920 DISPLAY;
    Keypad KEYPAD;
    DebugUart DEBUG_UART (UART2);
    //Can CAN;    
    
    Application APP(MEMORY, DISPLAY, KEYPAD, DEBUG_UART);
    APP.init();
    CORETIMER_DelayMs(20);
    APP.run();
    
    while ( true )
    {
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        SYS_Tasks ( );
       
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

