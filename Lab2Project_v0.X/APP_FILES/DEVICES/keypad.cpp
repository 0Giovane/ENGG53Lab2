#include "keypad.hpp"

volatile bool Keypad::is_key_pressed = false;
char Keypad::m_last_key = '\0';
constexpr char Keypad::m_keymap[ROWS][COLS];


void Keypad::cnCallback(CN_PIN cn_pin, uintptr_t context)
{
    uint8_t column = 0;
    LED_TEST_Toggle();
    switch(cn_pin)
    {
        case CN8_PIN: column = 0; /*LED_L1_Toggle();*/ break; //RG6 deve ser a coluna 1 
        case CN9_PIN: column = 1; /*LED_L2_Toggle();*/ break; //RG7 deve ser a coluna 2
        case CN10_PIN: column = 2; /*LED_L3_Toggle();*/ break; // ...
        case CN11_PIN: column = 3; /*LED_L4_Toggle();*/ break;
        default: break;
    }
    Keypad::is_key_pressed = true;
    const GPIO_PIN col_pins[COLS] = {
        KEYPAD_COL1_PIN, KEYPAD_COL2_PIN, KEYPAD_COL3_PIN, KEYPAD_COL4_PIN
    };
    for (uint8_t row = 0; row < ROWS; ++row)
    {
        resetLines();

        switch(row)
        {
            case 0: KEYPAD_ROW1_Clear(); break; // RG14
            case 1: KEYPAD_ROW2_Clear(); break; // RG12
            case 2: KEYPAD_ROW3_Clear(); break; // RG15
            case 3: KEYPAD_ROW4_Clear(); break; // RG13
            case 4: KEYPAD_ROW5_Clear(); break; // RG2
        }
        
        CORETIMER_DelayMs(1);
        if(!GPIO_PinRead(col_pins[column])) 
        {
            m_last_key = Keypad::m_keymap[row][column];
        }
        
    }
    
    activateLines();
}

Keypad::Keypad()
{
    m_last_key = '\0';
}

void Keypad::init()
{
    LED_TEST_Clear();
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

void Keypad::update()
{
    
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
    //if(Keypad::is_key_pressed) LED_TEST_Set();
    return Keypad::is_key_pressed;
}

void Keypad::resetLines()
{
    KEYPAD_ROW1_Set();
    KEYPAD_ROW2_Set();
    KEYPAD_ROW3_Set();
    KEYPAD_ROW4_Set();
    KEYPAD_ROW5_Set();
}

void Keypad::activateLines()
{
    KEYPAD_ROW1_Clear();
    KEYPAD_ROW2_Clear();
    KEYPAD_ROW3_Clear();
    KEYPAD_ROW4_Clear();
    KEYPAD_ROW5_Clear();
}

char Keypad::waitNextKey()
{
    char key;
    while(!Keypad::is_key_pressed);
    key = getKey();
    return key;
}

void Keypad::scan()
{
   
}

char Keypad::getKey()
{
    if(!Keypad::is_key_pressed)
    {
       return '\0';
    }
    //scan();
    Keypad::is_key_pressed = false;
    return m_last_key;
}

void Keypad::ClearLedsTest()
{
    LED_L1_Clear();
    LED_L2_Clear();
    LED_L3_Clear();
    LED_L4_Clear();
}