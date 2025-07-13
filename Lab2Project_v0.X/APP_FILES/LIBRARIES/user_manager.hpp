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

class UserManager
{
public:
    UserManager(DoorLock& door_lock, Lcd12864& display, Keypad& keypad, Eeprom24cxx& memory, CanProtocol& can_protocol);
    
    void init();
    void update();
    
    void getInputUserFromUart(char* buffer, size_t max_length, bool mask);
    bool checkUser(user_t& user);
    bool saveUser(user_t& user);    
    
private:
    DoorLock* m_door_lock;
    Lcd12864* m_display;
    Keypad* m_keypad;
    Eeprom24cxx* m_memory;
    CanProtocol* m_can_protocol;
    DebugUart* m_debug_uart;
    
    state_t current_state;
    state_t next_state;
    
};

#endif	/* USER_MANAGER_HPP */

