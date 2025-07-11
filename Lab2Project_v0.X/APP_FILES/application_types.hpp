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




#endif	/* APPLICATION_TYPES_HPP */

