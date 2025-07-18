#include "examples.hpp"

void keypadTest()
{
    Keypad keypad;
    keypad.init();
    
    char ch;
    while(1)
    {
        if(keypad.isKeyPressed())
        {
            ch = keypad.getKey();
            switch(ch)
            {
                case '1': keypad.ClearLedsTest(); LED_L1_Set(); break;
                case '2': keypad.ClearLedsTest(); LED_L2_Set();break;
                case '3': keypad.ClearLedsTest(); LED_L2_Set();LED_L1_Set();break;
                case '4': keypad.ClearLedsTest(); LED_L3_Set();break;
                case '5': keypad.ClearLedsTest(); LED_L3_Set(); LED_L1_Set(); break;
                case '6': keypad.ClearLedsTest(); LED_L3_Set();LED_L2_Set();break;
                case '7': keypad.ClearLedsTest(); LED_L3_Set();LED_L2_Set();LED_L1_Set();break;
                case '8': keypad.ClearLedsTest(); LED_L4_Set(); break;
                case '9': keypad.ClearLedsTest(); LED_L4_Set(); LED_L1_Set();break;
            }
            ch = 0;
        }
    }
}