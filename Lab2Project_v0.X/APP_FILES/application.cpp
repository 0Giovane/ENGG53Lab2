#include "application.hpp"
#include <stdint.h>
#include <stdio.h>
#include <string.h>

Application::Application(I2cEeprom memory, LcdDrvSt7920 lcd, DebugUart keypad):
    m_memory(memory),
    m_lcd(lcd),
    m_keypad(keypad),    
    m_current_state(INITIAL), 
    m_next_state(INITIAL)
{
    memset(m_login, 0, sizeof(m_login));
    memset(m_password, 0, sizeof(m_password));
    memset(m_users, 0, sizeof(m_users));
}

void Application::init()
{
    //Initialize hardwares
    //m_memory.init(); 
    m_lcd.init();
    //m_keypad.init();
    //can.init();
     
    loadUsersFromEeprom();
}

// Main application loop
void Application::run()
{
    while(1) 
    {
        // Handle current state
        switch(m_current_state) 
        {
            case INITIAL:              handleInitialState();          break;
            case AUTHENTICATOR:        handleAuthenticatorState();    break;
            case ADMIN_MENU:           handleAdminMenuState();        break;
            case REGISTER_USER:        handleRegisterUserState();     break;
            case DELETE_USER:          handleDeleteUserState();       break;
            case BLOCK_UNBLOCK_USER:   handleBlockUnblockUserState(); break;
            case USER_ACCESS:          handleUserAccessState();       break;
            default: INITIAL;          handleInitialState();          break;                        
        }
 
        // State transition
        if(m_next_state != m_current_state) 
        {
            m_current_state = m_next_state;
        }
    }
}

// State handlers implementation
void Application::handleInitialState() 
{
    clearScreen();
    showMessage(LINE_1 ,"     SALA 4     ");
    showMessage(LINE_2, "Login:");
    showMessage(LINE_3, "Senha:");
    
    // To show system process via uart
    const char* msg_machine_id = "\r\nSALA\r\n";
    const char* msg_login      = "\r\nLogin: ";
    const char* msg_senha      = "\r\nSenha: ";
    const char* msg_carregando = "\r\nCarregando...\r\n";
    
    m_keypad.write((uint8_t*)msg_machine_id, strlen(msg_machine_id));
    
    // Login
    m_keypad.write((uint8_t*)msg_login, strlen(msg_login));
    memset(m_login, 0, sizeof(m_login));
    readUserInput(m_login, MAX_FIELD_LENGTH, false, 0x0103);
    m_keypad.write((uint8_t*)"\r\n", 2);

    //Password
    m_keypad.write((uint8_t*)msg_senha, strlen(msg_senha));
    memset(m_password, 0, sizeof(m_password));
    readUserInput(m_password, MAX_FIELD_LENGTH, true, 0x0203);
    m_keypad.write((uint8_t*)"\r\n", 2);
    
    m_keypad.write((uint8_t*)msg_carregando, strlen(msg_carregando));
   
    m_next_state = AUTHENTICATOR;
}

void Application::handleAuthenticatorState() 
{
    showMessage(LINE_4, "Carregando..."); 

    // Credentials verification
    bool acesso_concedido = false;
    for (uint8_t i = 0; i < MAX_USERS; ++i)
    {
        User_t& u = m_users[i];

        if (u.login[0] == '\0')
            continue;

        if (u.is_blocked)
            continue;

        if (strcmp((char*)u.login, m_login) == 0 &&
            strcmp((char*)u.senha, m_password) == 0)
        {
            acesso_concedido = true;
            break;
        }
    }

    CORETIMER_DelayMs(2000); 
    
    const char* msg_permitido  = "\r\nAcesso Permitido!\r\n";
    const char* msg_negado     = "\r\nAcesso Negado!\r\n";
    if (acesso_concedido)
    {
        m_keypad.write((uint8_t*)msg_permitido, strlen(msg_permitido));
        showMessage(LINE_4, "Acesso Permitido!");
    }
    else
    {
        m_keypad.write((uint8_t*)msg_negado, strlen(msg_negado));
        showMessage(LINE_4, "Acesso negado!");

    }
    
    const char* linha          = "---------------------\r\n";
    m_keypad.write((uint8_t*)linha, strlen(linha));
        
    CORETIMER_DelayMs(3000); 
    m_next_state = INITIAL;
    //if adm m_next_state = ADMIN_MENU;
}

void Application::handleAdminMenuState() 
{
    clearScreen();
    showMessage(LINE_1 ,"     SALA 4     ");
    showMessage(LINE_1 ,"1 Entrar/Sair");
    showMessage(LINE_2, "2 Inserir User");
    showMessage(LINE_3, "3 Deletar User");
    
    //m_next_state = ADMIN_MENU;
    m_next_state = INITIAL;
}

void Application::handleRegisterUserState() 
{
    clearScreen();
    showMessage(LINE_1 ,"     SALA 4     ");
    showMessage(LINE_2, "Login:");
    showMessage(LINE_3, "Senha:");
    showMessage(LINE_4, "[1]Admin [2]Normal"); 
    
    //Users examples
    User_t example_users[MAX_USERS] = {
        { "0000", "0000", 0, 1 },
        { "0001", "0001", 0, 0 },
        { "0020", "0020", 0, 0 },
        { "0300", "0300", 0, 0 },
        { "4000", "4000", 0, 0 }
    };
    for (uint8_t i = 0; i < MAX_USERS; i++)
    {
        saveUserToEeprom(i, example_users[i]);
    }
    
    CORETIMER_DelayMs(50); 
    showMessage(LINE_4, "Concluido!"); 
    CORETIMER_DelayMs(3000); 
    
    m_next_state = ADMIN_MENU;   
}

void Application::handleDeleteUserState() 
{
   
}

void Application::handleBlockUnblockUserState() 
{
   
}

void Application::handleUserAccessState() 
{

}

// Helper methods implementation
bool Application::authenticateUserFromEeprom(const User_t& login, const User_t& password)
{
    return false;
}

void Application::saveUserToEeprom(uint16_t index, const User_t& user)
{
    uint16_t addr = EEPROM_USER_BASE_ADDR + index * EEPROM_USER_SIZE;
    m_memory.write(addr, (uint8_t*)&user, EEPROM_USER_SIZE);
}

void Application::deleteUserFromEeprom(const User_t& user) 
{

}

void Application::loadUsersFromEeprom()
{
    for (uint8_t i = 0; i < MAX_USERS; ++i)
    {
        uint16_t addr = EEPROM_USER_BASE_ADDR + i * EEPROM_USER_SIZE;
        m_memory.read(addr, (uint8_t*)&m_users[i], EEPROM_USER_SIZE);
    }

    const char* user_msg = "\r\nUsuarios cadastrados:\r\n";
    m_keypad.write((uint8_t*)user_msg, strlen(user_msg));
    for (uint8_t i = 0; i < MAX_USERS; i++)
    {
        if (m_users[i].login[0] != '\0')
        {
            char user_info[64];
            snprintf(user_info, sizeof(user_info), "User %d: %s / %s / %s / %s\r\n",
                     i, m_users[i].login, m_users[i].senha,
                     m_users[i].is_blocked ? "Bloqueado" : "Livre",
                     m_users[i].is_admin ? "Adm" : "Comum");
            m_keypad.write((uint8_t*)user_info, strlen(user_info));
        }
    }
}


void Application::readUserInput(char* buffer, size_t maxLength, bool mask, uint16_t lcd_pos)
{
    size_t i = 0;
    uint8_t ch;
    uint16_t current_lcd_pos = lcd_pos;

    while (true)
    {
        if (m_keypad.byteRead(&ch))
        {
            if (ch == '\r' || ch == '\n')
                break;

            // Backspace treatment
            if ((ch == 0x08 || ch == 0x7F) && i > 0)
            {
                i--;
                current_lcd_pos -= 1;
                // Restaura o underline na posição
                m_lcd.writeString(current_lcd_pos, " ");
                m_keypad.write((uint8_t*)"\b \b", 3);
                continue;
            }

            // Ignore if limit reached or invalid character
            if (i >= maxLength || ch < 0x20 || ch > 0x7E)
                continue;

            buffer[i++] = ch;

            // to debug uart
            if (mask)
            {
                uint8_t asterisk = '*';
                m_keypad.write(&asterisk, 1);
            }
            else
            {
                m_keypad.write(&ch, 1);
            }

            m_lcd.writeChar(current_lcd_pos, mask ? '*' : ch);
            current_lcd_pos += 1;
        }
    }
    buffer[i] = '\0';
}

void Application::showMessage(LinePossitionScren_t line, const char* str)
{
    m_lcd.writeString(line, str);
}

void Application::clearScreen() 
{
    m_lcd.clear();
}
