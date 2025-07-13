#include "user_manager.hpp"

DebugUart debug_uart;

UserManager::UserManager(DoorLock& door_lock, Lcd12864& display, Keypad& keypad, Eeprom24cxx& memory, CanProtocol& can_protocol):
    m_door_lock(&door_lock),
    m_display(&display),
    m_keypad(&keypad),
    m_memory(&memory),
    m_can_protocol(&can_protocol)
{
    m_debug_uart = &debug_uart;
}

void UserManager::init()
{
    
    m_door_lock->close();
}

void UserManager::getInputUserFromUart(char* buffer, size_t max_length, bool mask)
{
    size_t i = 0;
    uint8_t ch;

    while (true)
    {
        if(m_debug_uart->byteRead(&ch))
        {
            if (ch == '\r' || ch == '\n')
                break;

            // Backspace treatment
            if ((ch == 0x08 || ch == 0x7F) && i > 0)
            {
                m_debug_uart->write((uint8_t*)"\b \b", 3);
                continue;
            }

            // Ignore if limit reached or invalid character
            if (i >= max_length || ch < 0x20 || ch > 0x7E)
                continue;

            buffer[i++] = ch;

            // to debug uart
            if (mask)
            {
                uint8_t asterisk = '*';
                m_debug_uart->write(&asterisk, 1);
            }
            else
            {
                m_debug_uart->write(&ch, 1);
            }
        }
    }
    buffer[i] = '\0';
}

bool UserManager::checkUser(user_t& user)
{
    /* 
     * TODO: ler dado da eeprom e comparar pra ver se usuário existe, 
     * se existir salvar em user
     * usar esse metodo no estado de autenticação 
     */
    return true;
}

