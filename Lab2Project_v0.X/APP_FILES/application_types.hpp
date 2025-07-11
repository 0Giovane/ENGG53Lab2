/* 
 * File:   application_types.hpp
 * Author: Bianca
 *
 * Created on June 5, 2025, 3:22 AM
 */

#ifndef APPLICATION_TYPES_HPP
#define	APPLICATION_TYPES_HPP

#include <stdint.h>
#include <xc.h>

#define ID_MACHINE         4
#define SUPER_ADMIN_LOGIN  "0000"
#define SUPER_ADMIN_PASSWORD  "0000"

#define USER_LOGIN_SIZE     4
#define USER_PASSWORD_SIZE  4
#define MAX_USERS           10

#define MAX_FIELD_LENGTH 4

#define EEPROM_USER_BASE_ADDR  0x0000
#define EEPROM_USER_SIZE       sizeof(User_t)

typedef struct
{
    uint8_t login[USER_LOGIN_SIZE + 1];     // +1 to terminator '\0'
    uint8_t senha[USER_PASSWORD_SIZE + 1];
    /*
    todo:
    adicionar campo para indicar se o usuário está numa sala ou não
    */
    uint8_t is_admin;
} User_t;

typedef enum
{
    UPDATE,
    ADD,
    DEL        
} commandType_t;

typedef enum
{
  INITIAL          = 0,
  AUTHENTICATOR,
  ADMIN_MENU,
  REGISTER_USER,
  DELETE_USER,
  USER_ACCESS
          
} State_t;

typedef enum
{
  LINE_1 = 0x0000,
  LINE_2 = 0x0100,
  LINE_3 = 0x0200,
  LINE_4 = 0x0300  
          
} LinePossitionScren_t;

#endif	/* APPLICATION_TYPES_HPP */

