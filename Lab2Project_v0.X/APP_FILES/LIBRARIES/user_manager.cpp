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
    
    delayMs(100); //apenas pra debug - não usar assim pra não bloquear os outros devices
    m_next_state = USER_ACCESS;
    
    /*
     * TODO: implementar caso m_next_state = ADMIN_MENU
     */
}

void UserManager::handleAdminMenuState()
{
    m_debug_uart.print("\r\nProcessando estado de menu do admin!\r\n");
    
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
}

void UserManager::handleDeleteUserState()
{
    m_debug_uart.print("\r\nProcessando estado de deletar usuario!\r\n");
}

void UserManager::handleUserAccessState()
{
    m_debug_uart.print("\r\nProcessando estado de acesso do usuario!\r\n");
    setDisplayMessageToUser();
}

void UserManager::setDisplayMessageToUser()
{   
    switch(m_current_state)
    {
        case INITIAL: 
        {
            m_display.writeString(LINE_1 ,"     SALA 4     ");
            m_display.writeString(LINE_2, "Login:");
            m_display.writeString(LINE_3, "Senha:");          
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
            m_display.writeString(LINE_1 ,"[1] Entrar/Sair");
            m_display.writeString(LINE_2, "[2] Inserir User");
            m_display.writeString(LINE_3, "[3] Deletar User");
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
            m_display.writeString(LINE_4 ,"                    ");
            
            m_user.is_blocked = 1; // only to debug

            if (m_user.is_blocked)
            {
                m_display.writeString(LINE_1 ,"     SALA 4     ");
                m_display.writeString(LINE_3, "Acesso Liberado!");
                               
                m_door_lock.open(); // only to debug
            }
            else
            {
                m_display.writeString(LINE_1 ,"     SALA 4     ");
                
                /*
                 * TODO: (questao de IHM) Tratar tipos de acesso negado. Esta bloqueado? Usuario nao cadastrado?
                 */
                m_display.writeString(LINE_3, "Acesso Negado!");
            }
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
        m_input_display_pos = 0x0103;
        m_input_mask = false;
        m_input_phase = LOGIN;
    }
    
    readUserInputNonBlocking();
}

void UserManager::readUserInputNonBlocking()
{
    uint8_t ch;
    if (!m_debug_uart.byteRead(&ch))
    {
        return;
    }

    if (ch == '\r' || ch == '\n')
    {
        m_input_buffer[m_input_index] = '\0'; 

        if (m_input_phase == LOGIN) 
        {
            strncpy((char *)m_user.login, m_input_buffer, USER_LOGIN_SIZE);
            memset(m_input_buffer, 0, sizeof(m_input_buffer));
            m_input_index = 0;
            m_input_display_pos = 0x0203;
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
            
            /*
             * TODO: Tratar m_next_state quando for para addUser e deleteUser 
             */
        }
        return;
    }

    // Backspace
    if ((ch == 0x08 || ch == 0x7F) && m_input_index > 0)
    {
        m_input_index--;
        m_input_display_pos -= 1;
        m_input_buffer[m_input_index] = '\0';
        m_display.writeChar(m_input_display_pos, ' ');
        m_debug_uart.write((uint8_t*)"\b \b", 3);
        return;
    }

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
    
    m_display.writeChar(m_input_display_pos, m_input_mask ? '*' : ch);
    m_input_display_pos += 1;
}
