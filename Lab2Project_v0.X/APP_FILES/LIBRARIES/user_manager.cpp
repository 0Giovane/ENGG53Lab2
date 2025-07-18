#include "user_manager.hpp"

UserManager::UserManager(DoorLock& door_lock, Lcd12864& display, Keypad& keypad, Eeprom24cxx& memory, CanProtocol& can_protocol, DebugUart& debug_uart):
    m_door_lock(door_lock),
    m_display(display),
    m_keypad(keypad),
    m_memory(memory),
    m_can_protocol(can_protocol),
    m_debug_uart(debug_uart) 
{
    m_user = {0};
    m_current_state = INITIAL;
    m_next_state = INITIAL;
    
    m_input_index = 0;
    m_input_display_pos = 0;
    m_input_mask = false;
    m_input_phase = NONE;

    m_go_to_admin_menu = false; // flag to indicate if the user wants to go to admin menu
}

void UserManager::init()
{
    m_display.clear();
    m_door_lock.close();
    m_debug_uart.print("\r\nControle de acesso iniciado!\r\n");
}

void UserManager::update()
{
    // Handle current state
    switch(m_current_state) 
    {
        case INITIAL:              handleInitialState();          break;
        case AUTHENTICATOR:        handleAuthenticatorState();    break;
        case ADMIN_MENU:           handleAdminMenuState();        break;
        case REGISTER_USER:        handleRegisterUserState();     break;
        case DELETE_USER:          handleDeleteUserState();       break;
        case USER_ACCESS:          handleUserAccessState();       break;
        default: INITIAL;          handleInitialState();          break;                        
    }

    // State transition
    if(m_next_state != m_current_state) 
    {
        m_current_state = m_next_state;
    }
}

void UserManager::handleInitialState()
{
    m_debug_uart.print("\r\nProcessando estado inicial!\r\n");
    
    setDisplayMessageToUser();
    getKeypadInputUser();
}

void UserManager::handleAuthenticatorState()
{
    m_debug_uart.print("\r\nProcessando estado de autenticacao!\r\n");
    
    setDisplayMessageToUser();
    
    delayMs(200); //apenas pra debug - nao usar assim pra nao bloquear os outros devices

    if (checkUser(m_user) == false)
    {
        m_display.writeString(LINE_2 ,"                    ");
        m_display.writeString(LINE_3 ,"                    ");
        m_display.writeString(LINE_1 ,"     SALA 4     ");
        m_display.writeString(LINE_4, "Acesso Negado!");
        m_next_state = INITIAL;
        delayMs(200); // debug only
        return;
    }

    if (m_user.is_blocked)
    {
        m_display.writeString(LINE_2 ,"                    ");
        m_display.writeString(LINE_3 ,"                    ");
        m_display.writeString(LINE_1 ,"     SALA 4     ");
        m_display.writeString(LINE_4, "Usuario Bloqueado!");
        m_next_state = INITIAL;
        delayMs(200); // debug only
        return;
    }

    if (m_go_to_admin_menu)
    {
        m_next_state = ADMIN_MENU;
        m_go_to_admin_menu = false; // reset the flag
        return;
    }

    m_next_state = USER_ACCESS;
}

void UserManager::handleAdminMenuState()
{
    m_debug_uart.print("\r\nProcessando estado de menu do admin!\r\n");
    setDisplayMessageToUser();
    
    /*
     * TODO: implementar casos para analisando input do teclado:
     * [1] m_next_state = USER_ACCESS
     * [2] m_next_state = REGISTER_USER
     * [3] m_next_state = DELETE_USER
     */
}

void UserManager::handleRegisterUserState()
{
    m_debug_uart.print("\r\nProcessando estado de registro do usuario !\r\n");
    setDisplayMessageToUser();
}

void UserManager::handleDeleteUserState()
{
    m_debug_uart.print("\r\nProcessando estado de deletar usuario!\r\n");
    setDisplayMessageToUser();
}

void UserManager::handleUserAccessState()
{
    m_debug_uart.print("\r\nProcessando estado de acesso do usuario!\r\n");
    setDisplayMessageToUser();
    m_door_lock.open(5000);
    delayMs(200); // debug only
    m_user = {0}; // reset user data
    m_next_state = INITIAL; // reset to initial state after access
}

void UserManager::setDisplayMessageToUser()
{   
    switch(m_current_state)
    {
        case INITIAL: 
        {
            m_display.writeString(LINE_1 , (std::string("     SALA 4    ") + (m_go_to_admin_menu ? "A" : " ]")).c_str());
            m_display.writeString(LINE_2, (std::string("Login:") + (m_input_phase == LOGIN || m_input_phase == NONE ? "> ":" " )).c_str());
            m_display.writeString(LINE_3, (std::string("Senha:") + (m_input_phase == PASSWORD ? "> ":" " )).c_str());
            m_display.writeString(LINE_4, "                    ");
            break;
        }            
        case AUTHENTICATOR:
        {
           m_display.writeString(LINE_4, "Carregando...");  
           break;
        }

        case ADMIN_MENU:  
        {
            m_display.writeString(LINE_1 ,"     SALA 4     ");
            m_display.writeString(LINE_2 ,"[1] Entrar/Sair");
            m_display.writeString(LINE_3, "[2] Inserir User");
            m_display.writeString(LINE_4, "[3] Deletar User");
            break;
        }
        
        case REGISTER_USER:
        {
            m_display.writeString(LINE_1 ,"     SALA 4     ");
            m_display.writeString(LINE_2, "Login:");
            m_display.writeString(LINE_3, "Senha:");
            m_display.writeString(LINE_4, "[1]Admin [2]Normal");
            break;
        }

        case DELETE_USER:
        {
            m_display.writeString(LINE_1 ,"     SALA 4     ");
            m_display.writeString(LINE_2, "Login:");
             break;
        }
        
        case USER_ACCESS:  
        {
            /*
            * TODO: implementar clearLine em device lcd_12864
            */
            m_display.writeString(LINE_2 ,"                    ");
            m_display.writeString(LINE_3 ,"                    ");
            m_display.writeString(LINE_1 ,"     SALA 4     ");
            m_display.writeString(LINE_4, "Acesso Liberado!");       
            break;
        }

        default: 
        {
            /* initial state */
            m_display.writeString(LINE_1 ,"     SALA 4     ");
            m_display.writeString(LINE_2, "Login:");
            m_display.writeString(LINE_3, "Senha:");          
            break;
        } 
        
    }
}

void UserManager::getKeypadInputUser()
{
    if (m_input_phase == NONE)
    {
        m_debug_uart.print("\r\nLogin: ");
        memset(m_input_buffer, 0, sizeof(m_input_buffer));
        m_input_index = 0;
        m_input_display_pos = 0x0104;
        m_input_mask = false;
        m_input_phase = LOGIN;
    }
    
    readUserInputNonBlocking();
}

void UserManager::readUserInputNonBlocking()
{
    uint8_t ch;
    ch = m_keypad.waitNextKey(); // this is blocking, so it will wait for a key press

    // if (!m_debug_uart.byteRead(&ch))
    // {
    //     return;
    // }

    if (ch == 'A') // A is F1 key
    {
        m_go_to_admin_menu = !m_go_to_admin_menu; // toggle admin menu flag
        return;
    }

    if (ch == '\r' || ch == '\n' || ch == 'D') // D is the down key, enter on keyboard may not work
    {
        if (m_input_index != 4)
        {
            return; // invalid input length
        }

        m_input_buffer[m_input_index] = '\0'; 

        if (m_input_phase == LOGIN) 
        {
            strncpy((char *)m_user.login, m_input_buffer, USER_LOGIN_SIZE);
            memset(m_input_buffer, 0, sizeof(m_input_buffer));
            m_input_index = 0;
            m_input_display_pos = 0x0204;
            m_input_mask = true;
            m_input_phase = PASSWORD;
            m_debug_uart.print("\r\nSenha: ");
        }
        else if (m_input_phase == PASSWORD) 
        {
            strncpy((char *)m_user.password, m_input_buffer, USER_PASSWORD_SIZE);
            m_input_phase = NONE;
            m_debug_uart.print("\r\n");
            m_next_state = AUTHENTICATOR;
        }
        return;
    }

    if (ch == '*')
    {
        m_input_mask = !m_input_mask;
        m_display.writeString(m_input_display_pos, m_input_mask ? std::string(m_input_index, '*').c_str() : m_input_buffer);
        return;
    }

    if (ch == 'Q')
    {
        m_input_phase = NONE;
        m_debug_uart.print("\r\n");
        m_next_state = INITIAL; // reset to initial state
        m_display.writeString(0x0104, "    ");
        m_display.writeString(0x0204, "    ");
        return;
    }

    // Backspace
    // Keyboard does not have backspace
    // if ((ch == 0x08 || ch == 0x7F || ch == '#') && m_input_index > 0)
    // {
    //     m_input_index--;
    //     m_input_display_pos -= 1;
    //     m_input_buffer[m_input_index] = '\0';
    //     m_display.writeChar(m_input_display_pos, ' ');
    //     m_debug_uart.write((uint8_t*)"\b \b", 3);
    //     return;
    // }

    if (m_input_index >= USER_PASSWORD_SIZE || ch < 0x20 || ch > 0x7E)
    {
        return;
    }

    m_input_buffer[m_input_index++] = ch;

    if (m_input_mask)
    {
        m_debug_uart.write((uint8_t*)"*", 1);
    }
    else
    {
        m_debug_uart.write(&ch, 1);
    }

    // when we write char by char the lcd show empty spaces
    m_display.writeString(m_input_display_pos, m_input_mask ? std::string(m_input_index, '*').c_str() : m_input_buffer);
    // m_display.writeChar(m_input_display_pos, m_input_mask ? '*' : ch);
    // m_input_display_pos += 1;
}

bool UserManager::checkUser(user_t& user)
{
    const user_t mock_users[3] = {
        {"1111", "1111", 0, 1, FOUR},
        {"2222", "2222", 0, 0, FOUR},
        {"3333", "3333", 1, 0, FOUR}
    };

    for (const auto& mock_user : mock_users)
    {
        if (strncmp((char *)user.login, (char *)mock_user.login, USER_LOGIN_SIZE) == 0 &&
            strncmp((char *)user.password, (char *)mock_user.password, USER_PASSWORD_SIZE) == 0)
        {
            user.is_blocked = mock_user.is_blocked;
            user.is_admin = mock_user.is_admin;
            user.last_access = mock_user.last_access;
            return true;
        }
    }

    return false;
}

