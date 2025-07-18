/* 
 * File:   user_manager.hpp
 * Author: Bianca
 *
 * Created on 12 de Julho de 2025, 18:35
 */

#ifndef USER_MANAGER_HPP
#define	USER_MANAGER_HPP

#include <xc.h>
#include "definitions.h"
#include <string>
#include "COMMONS/commons.hpp"
#include "UTILS/utils.hpp"
#include "DRIVERS/drivers.hpp"
#include "DEVICES/devices.hpp"

typedef enum
{
  INITIAL,
  AUTHENTICATOR,
  ADMIN_MENU,
  REGISTER_USER,
  DELETE_USER,
  USER_ACCESS
          
} state_t;

typedef enum 
{
    NONE,
    LOGIN,
    PASSWORD
            
} inputPhase_t;

class UserManager
{
public:
    UserManager(DoorLock& door_lock, Lcd12864& display, Keypad& keypad, Eeprom24cxx& memory, CanProtocol& can_protocol, DebugUart& debug_uart);
    
    void init();
    void update(); //run fsm
    
    bool checkUser(user_t& user);
    bool saveUser(user_t& user);

    void setDisplayMessageToUser();
    void getKeypadInputUser();  
    void readUserInputNonBlocking();
    void setAuthorization();
    
private:
    DoorLock& m_door_lock;
    Lcd12864& m_display;
    Keypad& m_keypad;
    Eeprom24cxx& m_memory;
    CanProtocol& m_can_protocol;
    DebugUart& m_debug_uart;
    
    user_t m_user;
    
    state_t m_current_state;
    state_t m_next_state;
    
    char m_input_buffer[USER_PASSWORD_SIZE + 1];  // temp buffer
    size_t m_input_index;
    uint16_t m_input_display_pos;
    bool m_input_mask;
    inputPhase_t m_input_phase;

    bool m_go_to_admin_menu;
    
    void handleInitialState();
    void handleAuthenticatorState();
    void handleAdminMenuState();
    void handleRegisterUserState();
    void handleDeleteUserState();
    void handleUserAccessState();
    
};

#endif	/* USER_MANAGER_HPP */

