#include "examples.hpp"

typedef enum 
{
    TEST_WRITE_START,
    TEST_WRITE_WAIT,
    TEST_READ_START,
    TEST_READ_WAIT,
    TEST_DONE,
    TEST_ERROR
} eepromTestState_t;

void eepromTest()
{
    Eeprom24cxx memory;
    memory.init();

    const uint16_t test_index = 0;
    const uint8_t  w_data[5]  = {0xDE, 0xAD, 0xBE, 0xEF, 0x01};
    uint8_t        r_data[5]  = {0};

    eepromTestState_t state = TEST_WRITE_START;
    bool ret = false;

    while (true)
    {
        SYS_Tasks ( );
        
        memory.update();
        
        switch (state)
        {
            case TEST_WRITE_START:
            {
                if (memory.writeToIndex(test_index, w_data, sizeof(w_data)))
                {
                    state = TEST_WRITE_WAIT;
                }                    
                else
                {                   
                    state = TEST_ERROR;
                }
                break;
            }
            case TEST_WRITE_WAIT:
            {
                if (!memory.isBusy())
                {
                    state = TEST_READ_START;
                }
                break;
            }
            case TEST_READ_START:
            {
                if (memory.readFromIndex(test_index, r_data, sizeof(r_data)))
                {
                    state = TEST_READ_WAIT;
                }
                else
                {
                    state = TEST_ERROR;
                }
                break;
            }
            case TEST_READ_WAIT:
            {
                if (!memory.isBusy())
                {
                    state = TEST_DONE;
                }
                break;
            }
            case TEST_DONE:
            {
                ret = memcmp(w_data, r_data, sizeof(w_data)) == 0;

                if (ret)
                {
                    LED_TEST_Toggle();
                }
                else
                {
                    LED_TEST_Clear();
                }
            }                
            case TEST_ERROR: LED_L4_Set(); break;
        }
        
        delayMs(10);     
    }
}