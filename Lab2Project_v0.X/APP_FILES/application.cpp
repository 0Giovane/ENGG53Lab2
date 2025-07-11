#include "application.hpp"
#include <stdint.h>
#include <stdio.h>

Application::Application(I2cEeprom memory, LcdDrvSt7920 lcd, Keypad keypad, CanProtocol can_protocol, DebugUart debug_uart):
    m_memory(memory),
    m_lcd(lcd),
    m_keypad(keypad),
    m_can_protocol(can_protocol),
    m_debug_uart(debug_uart),
    m_current_state(INITIAL), 
    m_next_state(INITIAL)
{
    //memset(m_login, 0, sizeof(m_login));
    //memset(m_password, 0, sizeof(m_password));
    /*
    todo:
    não acho que a gente deva salvar os usuário em RAM aqui
    acho que devemos buscar os usuários do EEPROM sempre que for necessário
    */
    /*
    todo:
    ter como configurar o número da sala
    atualmente está hardcoded como "SALA 4"
    */
    memset(m_users, 0, sizeof(m_users));
}

void Application::init()
{
    //Initialize drivers
    m_memory.init(); 
    m_lcd.init();
    m_keypad.init();
    m_can_protocol.init();
    m_debug_uart.init();
     
    //loadUsersFromEeprom(); 
}

void ClearLedsTest()
{
    LED_L1_Clear();
    LED_L2_Clear();
    LED_L3_Clear();
    LED_L4_Clear();
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
    const char* login_message = "Login: ";
    const char* password_message = "Senha: ";
    showMessage(LINE_1 ,"     SALA 4     ");
    showMessage(LINE_2, login_message);
    showMessage(LINE_3, password_message);
    // To show system process via uart
    const char* msg_machine_id = "\r\nSALA\r\n";
    const char* msg_login      = "\r\nLogin: ";
    const char* msg_senha      = "\r\nSenha: ";
    const char* msg_carregando = "\r\nCarregando...\r\n";
    bool hide = true;
    InputMode mode = InputMode::Login;
    while(1)
    {
        clearScreen();
        
        showMessage(LINE_1 ,"     SALA 4     ");
        
        showMessage(LINE_2, (std::string("Login:") + ( mode == InputMode::Login? "> ":" " ) + m_login_string).c_str());
        
        if(hide) showMessage(LINE_3, (std::string("Password:") + ( mode == InputMode::Password? "> ":" " ) + std::string(m_password_string.size(), '*')).c_str());
        else showMessage(LINE_3, (std::string("Password:") + ( mode == InputMode::Password? "> ":" " ) + m_password_string).c_str());
        

        char key = m_keypad.waitNextKey();
        switch(key)
        {
            case '1':case '2':case '3':case '4':case '5':case '6':case '7':case '8':case '9':
                if(mode == InputMode::Login) loginConstructor(key);
                if(mode == InputMode::Password) passwordConstructor(key);
                break;
            case '*':
                hide = !hide;
                break;
            case 'Q':
                if(mode == InputMode::Login)m_login_string.clear();
                if(mode == InputMode::Password){m_password_string.clear();hide = true;}
                break;
            case 'U':
                mode = InputMode::Login; break;
            case 'D':
                mode = InputMode::Password; break;
        }    
    }
    m_next_state = INITIAL;
    
    
     /*
    todo:
    se o usuário apertou botão do menu, ir para o menu de admin (m_next_state = ADMIN_MENU)
    se o usuário apertou qualquer outro botão, salvar na variável de login/senha (variáveis da classe application)
    podemos ter uma variável auxiliar para indicar se está digitando o login ou a senha
    só devemos ir para o estado AUTHENTICATOR se o usuário terminou de digitar o login e senha
    */
}

void Application::handleAuthenticatorState() 
{
    showMessage(LINE_4, "Carregando..."); 

    // Credentials verification
    bool acesso_concedido = false;

    /*
    todo:
    acho que devemos buscar os usuários do EEPROM aqui
    e então fazer o loop
    após o loop, damos free na memória alocada (não sei exatamente como funciona em C++, se devemos dar free manualmente)
    */

    for (uint8_t i = 0; i < MAX_USERS; ++i)
    {
        user_t& u = m_users[i];

        if (u.login[0] == '\0')
            continue;

        if (strcmp((char*)u.login, m_login) == 0 &&
            strcmp((char*)u.password, m_password) == 0)
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
        m_debug_uart.write((uint8_t*)msg_permitido, strlen(msg_permitido));
        showMessage(LINE_4, "Acesso Permitido!");
    }
    else
    {
        m_debug_uart.write((uint8_t*)msg_negado, strlen(msg_negado));
        showMessage(LINE_4, "Acesso negado!");

    }
    
    const char* linha          = "---------------------\r\n";
    m_debug_uart.write((uint8_t*)linha, strlen(linha));
        
    CORETIMER_DelayMs(3000); 
    m_next_state = USER_ACCESS; // Estado para tratar o fechamento automático da porta após o acesso do usuário
    //if adm m_next_state = ADMIN_MENU;
}

void Application::handleAdminMenuState() 
{
    clearScreen();
    showMessage(LINE_1 ,"     SALA 4     ");
    showMessage(LINE_1 ,"1 Entrar/Sair");
    showMessage(LINE_2, "2 Inserir User");
    showMessage(LINE_3, "3 Deletar User");
    
    /*
    todo:
    ler o botão do teclado e ir pro estado correto
    */
    
    //m_next_state = ADMIN_MENU;
    m_next_state = INITIAL;
}

void Application::handleRegisterUserState() 
{
    clearScreen();
    showMessage(LINE_1 ,"     SALA 4     ");
    /*
    todo: mostrar uma desses mensagens de cada vez (primeiro login, depois senha, depois admin/comum)
    */
    showMessage(LINE_2, "Login:");
    showMessage(LINE_3, "Senha:");
    showMessage(LINE_4, "[1]Admin [2]Comum"); 

    /*
    todo:
    validar logins iguais
    bucar usuários da eeprom aqui para fazer a comparação
    */
    
    //Users examples
    user_t example_users[MAX_USERS] = {
        { "0000", "0000", 1 },
        { "0001", "0001", 0 },
        { "0020", "0020", 0 },
        { "0300", "0300", 0 },
        { "4000", "4000", 0 }
    };
    for (uint8_t i = 0; i < MAX_USERS; i++)
    {
        //saveUserToEeprom(i, example_users[i]);
    }
    
    CORETIMER_DelayMs(50); 
    showMessage(LINE_4, "Concluido!"); 
    CORETIMER_DelayMs(3000); 
    
    m_next_state = ADMIN_MENU;   
}

void Application::handleDeleteUserState() 
{
    clearScreen();
    showMessage(LINE_1 ,"     SALA 4     ");
    showMessage(LINE_2, "Deletar Usuario");
    showMessage(LINE_3, "Login:");

    /*
    todo:
    buscar usuários da eeprom aqui
    verificar se o login existe
    se existir, deletar o usuário e mostrar mensagem de sucesso
    se não existir, mostrar mensagem de erro
    */
}

void Application::handleUserAccessState() 
{
    clearScreen();
    showMessage(LINE_1 ,"     SALA 4     ");
    showMessage(LINE_2, "Porta aberta");

    /*
    todo:
    buscar usuários da eeprom aqui
    verificar se o login existe
    se existir, deletar o usuário e mostrar mensagem de sucesso
    se não existir, mostrar mensagem de erro
    */
    CORETIMER_DelayMs(5000); // Simulate door open time
    
    m_next_state = INITIAL;
}

// Helper methods implementation
bool Application::authenticateUserFromEeprom(const user_t& login, const user_t& password)
{
    return false;
}

bool Application::saveUserToEeprom(uint16_t index, const packedUser_t& packed_user)
{
    uint16_t addr = EEPROM_USER_BASE_ADDR + index * EEPROM_USER_SIZE;
    return m_memory.write(addr, (uint8_t*)&packed_user, EEPROM_USER_SIZE);
}

void Application::deleteUserFromEeprom(const user_t& user) 
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
    m_debug_uart.write((uint8_t*)user_msg, strlen(user_msg));
    for (uint8_t i = 0; i < MAX_USERS; i++)
    {
        if (m_users[i].login[0] != '\0')
        {
            char user_info[64];
            snprintf(user_info, sizeof(user_info), "User %d: %s - %s - %s - %s\r\n",
                     i, m_users[i].login, m_users[i].password,
                     m_users[i].is_admin ? "Adm" : "Comum");
            m_debug_uart.write((uint8_t*)user_info, strlen(user_info));
        }
    }
}

void Application::loadPackedUserFromEeprom()
{    
    for (uint8_t i = 0; i < MAX_USERS; ++i)
    {
        uint16_t addr = EEPROM_USER_BASE_ADDR + i * EEPROM_USER_SIZE;
        m_memory.read(addr, (uint8_t*)&m_packed_users[i], EEPROM_USER_SIZE);
    }

    m_can_protocol.setTxFlag();
    const char* user_msg = "\r\nUsuarios cadastrados:\r\n";
    m_debug_uart.write((uint8_t*)user_msg, strlen(user_msg));
    while (!m_debug_uart.isTxDone());
    m_debug_uart.resetTxFlag();
    
    for (uint8_t i = 0; i < MAX_USERS; i++)
    {
        bool is_valid_user = true;
        for (int j = 0; j < 2; ++j)
        {
            if (m_packed_users[i].login[j] == 0xFF || m_packed_users[i].password[j] == 0xFF)
            {
                is_valid_user = false;
                break;
            }
        }

        if (!is_valid_user)
            continue;

        m_users[i] = unpackUser(m_packed_users[i]);
        CORETIMER_DelayMs(10);

        char buffer[64];
        snprintf(buffer, sizeof(buffer), "Unpacked: %s / %s / adm=%d / blk=%d / room=%d\r\n",
                 m_users[i].login,
                 m_users[i].password,
                 m_users[i].is_admin,
                 m_users[i].is_blocked,
                 m_users[i].last_access);

        m_debug_uart.write((uint8_t*)buffer, strlen(buffer));
        while (!m_debug_uart.isTxDone());
        m_debug_uart.resetTxFlag();
    }
}

void Application::readUserInput(char* buffer, size_t max_length, bool mask, uint16_t lcd_pos)
{
    size_t i = 0;
    uint8_t ch;
    uint16_t current_lcd_pos = lcd_pos;
    while (true)
    {
        if (m_keypad.isKeyPressed())
        {
            ch = (uint8_t)m_keypad.getKey();
            if(ch == 'E' || ch == '\r' || ch == '\n') { break; }
            if(ch == 'Q' && i > 0)
            {
                i--;
                current_lcd_pos -= 1;             
                m_lcd.writeString(current_lcd_pos, " ");
                m_debug_uart.write((uint8_t*)"\b \b", 3);
                continue;
            }
            // Ignore if limit reached or invalid character
            if (i >= max_length || ch < 0x20 || ch > 0x7E){ continue; }

            buffer[i++] = ch;

            // to debug uart
            if (mask)
            {
                uint8_t asterisk = '*';
                m_debug_uart.write(&asterisk, 1);
            }
            else
            {
                m_debug_uart.write(&ch, 1);
            }

            m_lcd.writeChar(current_lcd_pos, mask ? '*' : ch);
            current_lcd_pos += 1;
            
        }
        else if(m_debug_uart.byteRead(&ch))
        {
            if (ch == '\r' || ch == '\n')
                break;

            // Backspace treatment
            if ((ch == 0x08 || ch == 0x7F) && i > 0)
            {
                i--;
                current_lcd_pos -= 1;             
                m_lcd.writeString(current_lcd_pos, " ");
                m_debug_uart.write((uint8_t*)"\b \b", 3);
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
                m_debug_uart.write(&asterisk, 1);
            }
            else
            {
                m_debug_uart.write(&ch, 1);
            }

            m_lcd.writeChar(current_lcd_pos, mask ? '*' : ch);
            current_lcd_pos += 1;
        }
    }
    buffer[i] = '\0';
}

void Application::showMessage(LinePositionScren_t line, const char* str)
{
    m_lcd.writeString(line, str);
}

void Application::clearScreen() 
{
    m_lcd.clear();
}


void Application::runKeypadTest()
{
    char ch;
    while(1)
    {
        if(m_keypad.isKeyPressed())
        {
            ch = m_keypad.getKey();
            switch(ch)
            {
                case '1': ClearLedsTest(); LED_L1_Set(); break;
                case '2': ClearLedsTest(); LED_L2_Set();break;
                case '3': ClearLedsTest(); LED_L2_Set();LED_L1_Set();break;
                case '4': ClearLedsTest(); LED_L3_Set();break;
                case '5': ClearLedsTest(); LED_L3_Set(); LED_L1_Set(); break;
                case '6': ClearLedsTest(); LED_L3_Set();LED_L2_Set();break;
                case '7': ClearLedsTest(); LED_L3_Set();LED_L2_Set();LED_L1_Set();break;
                case '8': ClearLedsTest(); LED_L4_Set(); break;
                case '9': ClearLedsTest(); LED_L4_Set(); LED_L1_Set();break;
            }
            ch = 0;
        }
    }
}

void Application::runCanProtocolTest()
{    
    uint32_t id_msg = 0;
    m_can_protocol.buildMessageId(BOARD_ID, ADD, id_msg);  //max 11 bits to can id

    uint8_t MAX_MSG = 3;
            
    uint32_t id = id_msg;
    uint8_t size = 8;
    uint8_t tx_data[MAX_MSG][8] = {
        {0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xF0},
        {0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xF1},
        {0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xF2}};
    
    uint32_t rx_id = 0;
    uint8_t rx_size = 0;
    uint8_t rx_data[8] = {0};
    uint16_t timestamp = 0;
        
    m_can_protocol.setTxFlag();
    m_can_protocol.setRxFlag();
    
    uint8_t i = 0;
         
    while ( true )
    {  
        SYS_Tasks ( );
        
        LED_L1_Clear();
        LED_L2_Clear();
        LED_L3_Clear();
        LED_L4_Clear();
        LED_TEST_Clear();
        
        CORETIMER_DelayMs(1000);
        
        if (m_can_protocol.isTxDone())
        {
            if (m_can_protocol.write(id, size, tx_data[i]))
            {
                LED_L1_Set();
                m_can_protocol.resetTxFlag();
            }
            else
            {
                LED_L2_Set();
            }
        }
        
        CORETIMER_DelayMs(100);
        
        if (m_can_protocol.isRxDone())
        {            
            if (m_can_protocol.read(&rx_id, &rx_size, rx_data, &timestamp))
            {
                LED_L3_Set();
                m_can_protocol.resetRxFlag();

                if ((rx_id == id) && (rx_size == size) && (memcmp(rx_data, tx_data[i], size) == 0))
                {
                    LED_TEST_Set();
                }
                else
                {
                    LED_L4_Set();
                }
                
                i++;     
                if(i > MAX_MSG-1)
                {
                    return;
                }
                else
                {
                    m_can_protocol.setRxFlag();
                }
            }
        }
        
        CORETIMER_DelayMs(100);
    }
}

void Application::runDebugUartTest()
{
    const char* msg_board_id = "\r\nSALA 4: [1] Entrar [2] Sair\r\n";
    const char* msg_enter    = "\r\nEntrando!\r\n";
    const char* msg_exit     = "\r\nSaindo!\r\n";
    const char* msg_invalid  = "\r\nInvalid Command!\r\n";
    uint8_t rx_buffer[1];
    
    bool input_flag = false;
        
    m_debug_uart.write((uint8_t*)msg_board_id, strlen(msg_board_id));
    m_debug_uart.resetTxFlag();
     
    while (true)
    {
        SYS_Tasks();

        if (!input_flag && m_debug_uart.isTxDone())
        {
            m_debug_uart.resetTxFlag();
            m_debug_uart.read(rx_buffer, sizeof(rx_buffer));
            input_flag = true;
        }

        if (m_debug_uart.isRxDone())
        {
            m_debug_uart.resetRxFlag();
            input_flag = false;

            if (rx_buffer[0] == '1')
            {
                m_debug_uart.write((uint8_t*)msg_enter, strlen(msg_enter));
            }
            else if (rx_buffer[0] == '2')
            {
                m_debug_uart.write((uint8_t*)msg_exit, strlen(msg_exit));
            }
            else
            {
                m_debug_uart.write((uint8_t*)msg_invalid, strlen(msg_invalid));
            }

            m_debug_uart.resetTxFlag();
        }

        CORETIMER_DelayMs(10);
    }
}

void Application::runPackUnpackDebugTest()
{
    user_t user = {0};
    strcpy((char*)user.login, "1234");
    strcpy((char*)user.password, "5678");
    user.is_blocked = 0;
    user.is_admin = 1;
    user.last_access = FOUR;

    char buffer[64];

    snprintf(buffer, sizeof(buffer), "Original: %s / %s / adm=%d / blk=%d / room=%d\r\n",
         user.login,
         user.password,
         user.is_blocked,
         user.is_admin,
         user.last_access);
    m_debug_uart.write((uint8_t*)buffer, strlen(buffer));
    while (!m_debug_uart.isTxDone());
    m_debug_uart.resetTxFlag();

    packedUser_t packed = packUser(user);
    snprintf(buffer, sizeof(buffer), "Packed: %02X %02X %02X %02X %02X\r\n",
         packed.login[0], packed.login[1],
         packed.password[0], packed.password[1],
         packed.flags);
    m_debug_uart.write((uint8_t*)buffer, strlen(buffer));
    while (!m_debug_uart.isTxDone());
    m_debug_uart.resetTxFlag();

    user_t unpacked = unpackUser(packed);
    snprintf(buffer, sizeof(buffer), "Unpacked: %s / %s / adm=%d / blk=%d / room=%d\r\n",
         unpacked.login,
         unpacked.password,
         unpacked.is_blocked,
         unpacked.is_admin,
         unpacked.last_access);
    m_debug_uart.write((uint8_t*)buffer, strlen(buffer));
    while (!m_debug_uart.isTxDone());
    m_debug_uart.resetTxFlag();
}

void Application::runCanEepromDebugTest()
{
    user_t user1 = {0};
    strcpy((char*)user1.login, "1234");
    strcpy((char*)user1.password, "5678");
    user1.is_blocked = 0;
    user1.is_admin = 1;
    user1.last_access = ONE;
    
    user_t user2 = {0};
    strcpy((char*)user2.login, "9111");
    strcpy((char*)user2.password, "6222");
    user2.is_blocked = 1;
    user2.is_admin = 0;
    user2.last_access = FOUR;
    
    packedUser_t packed1 = packUser(user1);
    packedUser_t packed2 = packUser(user2);
    
    uint32_t id_msg = 0;
    m_can_protocol.buildMessageId(BOARD_ID, ADD, id_msg);  //max 11 bits to can id

    uint8_t MAX_MSG = 2;
            
    uint32_t id = id_msg;
    uint8_t size = 5;
    uint8_t can_data[MAX_MSG][5] = {};
    memcpy(can_data[0], &packed1, sizeof(packedUser_t));
    memcpy(can_data[1], &packed2, sizeof(packedUser_t));
    
    uint32_t rx_id = 0;
    uint8_t rx_size = 0;
    uint8_t rx_data[8] = {0};
    uint16_t timestamp = 0;
        
    m_can_protocol.setTxFlag();
    m_can_protocol.setRxFlag();
    
    uint8_t i = 0;
         
    while ( true )
    {  
        SYS_Tasks ( );
        
        LED_L1_Clear();
        LED_L2_Clear();
        LED_L3_Clear();
        LED_L4_Clear();
        LED_TEST_Clear();
        
        CORETIMER_DelayMs(1000);
        
        if (m_can_protocol.isTxDone())
        {
            if (m_can_protocol.write(id, size, can_data[i]))
            {
                LED_L1_Set();
                m_can_protocol.resetTxFlag();
            }
            else
            {
                LED_L2_Set();
            }
        }
        
        CORETIMER_DelayMs(100);
        
        if (m_can_protocol.isRxDone())
        {            
            if (m_can_protocol.read(&rx_id, &rx_size, rx_data, &timestamp))
            {
                LED_L3_Set();
                m_can_protocol.resetRxFlag();

                if ((rx_id == id) && (rx_size == size) && (memcmp(rx_data, can_data[i], size) == 0))
                {
                    packedUser_t packed_save;
                    memcpy(&packed_save, rx_data, sizeof(packedUser_t));
                    if(saveUserToEeprom(i, packed_save))
                    {
                        LED_TEST_Set();
                    }
                    else
                    {
                        i--;
                    }
                }
                else
                {
                    LED_L4_Set();
                }
                
                i++;     
                if(i > MAX_MSG-1)
                {
                    break;
                }
                else
                {
                    m_can_protocol.setRxFlag();
                }
            }
        }
        
        CORETIMER_DelayMs(100);   
    }
    
    m_can_protocol.setTxFlag();
    loadPackedUserFromEeprom();
}
    
void Application::loginConstructor(char key)
{
    if(m_login_string.size() < 4 )
        {
            m_login_string+=key;
        }    
}

void Application::loginConstructor(std::string inputString)
{
    m_login_string = inputString;  
}

void Application::passwordConstructor(char key)
{
    if(m_password_string.size() < 4 )
    {
        m_password_string+=key;
    }  
}

void Application::passwordConstructor(std::string inputString)
{
    m_password_string = inputString;
}

//I2C NAO TEM UMA FUNCAO DE DELETE, ENTAO SOBRESCREVEREMOS O DADO COM 0xFF
uint16_t Application::findUserAddressByLogin(const char* login)
{
//    User_t temp_user;
//    for (uint16_t i = 0; i < MAX_USERS; ++i)
//    {
//        uint16_t addr = EEPROM_USER_BASE_ADDR + i * EEPROM_USER_SIZE;
//        read(addr, (uint8_t*)&temp_user, EEPROM_USER_SIZE);
//        
//        if (strcmp((char*)temp_user.login, login) == 0)
//        {
//            return addr; // usuário encontrado
//        }
//    }
    return 0xFFFF; // Not found
}

void Application::deleteAtAddress(uint16_t address)
{
//    uint8_t buffer[EEPROM_USER_SIZE + 2];
//    buffer[0] = (uint8_t)(address >> 8);
//    buffer[1] = (uint8_t)(address & 0xFF);
//
//    for (int i = 2; i < EEPROM_USER_SIZE + 2; ++i)
//        buffer[i] = 0;
//
//    transfer_done = false;
//    I2C1_Write(EEPROM_ADDRESS, buffer, EEPROM_USER_SIZE + 2);
//    //while (!transfer_done);
//
//    CORETIMER_DelayMs(20);
}
