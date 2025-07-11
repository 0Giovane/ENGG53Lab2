/* 
 * File:   application.hpp
 * Author: Bianca, João Cerqueira
 *
 * Created on June 4, 2025, 9:59 PM
 */

#ifndef APPLICATION_HPP
#define	APPLICATION_HPP

#include <xc.h>
#include "definitions.h"
#include "debug_uart.hpp"
#include "i2c_eeprom.hpp"
#include "lcd_drv_st7920.hpp"
#include "keypad.hpp"
#include <string>
#include "can_protocol.hpp"
#include "commons.hpp"

typedef enum
{
  INITIAL          = 0,
  AUTHENTICATOR,
  ADMIN_MENU,
  REGISTER_USER,
  DELETE_USER,
  USER_ACCESS
          
} State_t;

class Application
{
public:
    Application(I2cEeprom memory, LcdDrvSt7920 lcd, Keypad keypad, CanProtocol can_protocol, DebugUart debug_uart);
    
    void init();
    void run();
    
    void runKeypadTest();
    void runCanProtocolTest();
    void runDebugUartTest();
    void runPackUnpackDebugTest();
    void runCanEepromDebugTest();
   
private:
    
    I2cEeprom m_memory;
    LcdDrvSt7920 m_lcd;
    Keypad m_keypad;
    CanProtocol m_can_protocol;
    DebugUart m_debug_uart; // Simulation keypad and using as debug ATTENTION!! baudrate = 115200
    State_t m_current_state;
    State_t m_next_state;
    
    char m_login[USER_LOGIN_SIZE];
    char m_password[USER_PASSWORD_SIZE];
    
    std::string m_login_string;
    std::string m_password_string;
    
    user_t m_users[MAX_USERS];  // to save users in RAM
    packedUser_t m_packed_users[MAX_USERS];
   
    // State handlers
    void handleInitialState();
    void handleAuthenticatorState();
    void handleAdminMenuState();
    void handleRegisterUserState();
    void handleDeleteUserState();
    void handleUserAccessState();
    
    // Helper methods
    bool authenticateUserFromEeprom(const user_t& login, const user_t& password);
    bool saveUserToEeprom(uint16_t index, const packedUser_t& packed_user);
    void deleteUserFromEeprom(const user_t& user);
    void loadUsersFromEeprom();
    void loadPackedUserFromEeprom();
    void showUserFromEeprom();
    
    void passwordConstructor(char key);
    void loginConstructor(char key);
    void passwordConstructor(std::string inputString);
    void loginConstructor(std::string inputString);
    
    // UI helpers
    void readUserInput(char* buffer, size_t max_length, bool mask, uint16_t lcd_position); //Input from serial terminal - ATTENTION!!! baudrate 115200
    void showMessage(LinePositionScren_t line, const char* str);
    void clearScreen();
    
    uint16_t findUserAddressByLogin(const char* login);
    void deleteAtAddress(uint16_t address);
    
    enum class InputMode: uint8_t
    {
        Login,
        Password
    };
};

#endif	/* APPLICATION_HPP */

