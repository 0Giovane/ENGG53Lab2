#include "keypad.hpp"

static volatile bool is_key_pressed = false;

void Keypad::cnCallback(CN_PIN cn_pin, uintptr_t context)
{
    switch(cn_pin)
    {
        case CN8_PIN: LED_L1_Toggle(); break;
        case CN9_PIN: LED_L2_Toggle(); break;
        case CN10_PIN: LED_L3_Toggle(); break;
        case CN11_PIN: LED_L4_Toggle(); break;
        default: LED_TEST_Toggle(); break;
    }
    is_key_pressed = true;
}

Keypad::Keypad()
{
    m_last_key = '\0';
}

void Keypad::init()
{
    KEYPAD_ROW1_Clear();
    KEYPAD_ROW2_Clear();
    KEYPAD_ROW3_Clear();
    KEYPAD_ROW4_Clear();
    KEYPAD_ROW5_Clear();
    
    CNCONSET = _CNCON_ON_MASK;     // CN global enable
    IEC1SET  = _IEC1_CNIE_MASK;    // Enable CN interrupt in IEC1
    CNPUESET = (1<<6) | (1<<7) | (1<<8) | (1<<9); // Pull-up RG6?RG9
    CNENSET  = (1<<8) | (1<<9) | (1<<10) | (1<<11); // CN8?CN11 enable
    
    registerCallback();
}

void Keypad::registerCallback()
{
    GPIO_PinInterruptCallbackRegister(CN8_PIN, cnCallback, 0);
    GPIO_PinInterruptCallbackRegister(CN9_PIN, cnCallback, 0);
    GPIO_PinInterruptCallbackRegister(CN10_PIN, cnCallback, 0);
    GPIO_PinInterruptCallbackRegister(CN11_PIN, cnCallback, 0);
}

bool Keypad::isKeyPressed()
{
    return is_key_pressed;
}

void Keypad::resetLines()
{
    KEYPAD_ROW1_Clear();
    KEYPAD_ROW2_Clear();
    KEYPAD_ROW3_Clear();
    KEYPAD_ROW4_Clear();
    KEYPAD_ROW5_Clear();
}

void Keypad::scan()
{
    const GPIO_PIN col_pins[COLS] = {
        KEYPAD_COL1_PIN, KEYPAD_COL2_PIN, KEYPAD_COL3_PIN, KEYPAD_COL4_PIN
    };

    for (uint8_t row = 0; row < ROWS; ++row)
    {
        resetLines();

        switch(row)
        {
            case 0: KEYPAD_ROW1_Set(); break; // RG14
            case 1: KEYPAD_ROW2_Set(); break; // RG12
            case 2: KEYPAD_ROW3_Set(); break; // RG15
            case 3: KEYPAD_ROW4_Set(); break; // RG13
            case 4: KEYPAD_ROW5_Set(); break; // RG2
        }

        for (volatile int d = 0; d < 500; ++d);

        for (uint8_t col = 0; col < COLS; ++col)
        {
            if (!GPIO_PinRead(col_pins[col]))
            {
                m_last_key = m_keymap[row][col];
                return;
            }
        }
    }
    m_last_key = '\0';
}

char Keypad::getKey()
{
    if(!is_key_pressed)
    {
       return '\0';
    }
    
    scan();
    is_key_pressed = false;
    
    return m_last_key;
}