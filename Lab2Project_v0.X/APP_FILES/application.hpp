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
#include "application_types.hpp"
#include "debug_uart.hpp"
#include "i2c_eeprom.hpp"
#include "lcd_drv_st7920.hpp"
#include "keypad.hpp"
#include <string>

class Application
{
public:
    Application(I2cEeprom memory, LcdDrvSt7920 lcd, Keypad keypad, DebugUart debug_uart);
    void init();
    void run();
    void runKeypadTest();
   
private:
    I2cEeprom m_memory;
    LcdDrvSt7920 m_lcd;
    Keypad m_keypad;
    DebugUart m_debug_uart; // Simulation keypad and using as debug ATTENTION!! baudrate = 115200
    State_t m_current_state;
    State_t m_next_state;
    
    char m_login[MAX_FIELD_LENGTH];
    char m_password[MAX_FIELD_LENGTH];
    
    std::string m_login_string;
    std::string m_password_string;
    
    User_t m_users[MAX_USERS];  // to save users in RAM
   
    // State handlers
    void handleInitialState();
    void handleAuthenticatorState();
    void handleAdminMenuState();
    void handleRegisterUserState();
    void handleDeleteUserState();
    void handleUserAccessState();
    
    // Helper methods
    bool authenticateUserFromEeprom(const User_t& login, const User_t& password);
    void saveUserToEeprom(uint16_t index, const User_t& user);
    void deleteUserFromEeprom(const User_t& user);
    void loadUsersFromEeprom();
    
    void passwordConstructor(char key);
    void loginConstructor(char key);
    void passwordConstructor(std::string inputString);
    void loginConstructor(std::string inputString);
    
    // UI helpers
    void readUserInput(char* buffer, size_t max_length, bool mask, uint16_t lcd_position); //Input from serial terminal - ATTENTION!!! baudrate 115200
    void showMessage(LinePossitionScren_t line, const char* str);
    void clearScreen();
    
    enum class InputMode: uint8_t
    {
        Login,
        Password
    };
};

#endif	/* APPLICATION_HPP */

