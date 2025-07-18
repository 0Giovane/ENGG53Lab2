/* 
 * File:   commons.hpp
 * Author: Bianca
 *
 * Created on July 10, 2025, 11:12 PM
 */

#ifndef COMMONS_HPP
#define	COMMONS_HPP

#include <xc.h>
#include <stdint.h>
#include <stdbool.h>

/* Board configuration */
#define BOARD_ID 0x01     

/* User configuration */
#define SUPER_ADMIN_LOGIN  "1234"
#define SUPER_ADMIN_PASSWORD  "5678"
#define MAX_USERS           10

#define USER_LOGIN_SIZE     4
#define USER_PASSWORD_SIZE  4

typedef enum
{
  ONE,
  TWO,
  THREE,
  FOUR        
} roomNumber_t;

typedef struct
{
    uint8_t login[USER_LOGIN_SIZE + 1];     // +1 to terminator '\0'
    uint8_t password[USER_PASSWORD_SIZE + 1]; 
    uint8_t is_blocked;                     // 1 = blocking, 0 = non-blocking
    uint8_t is_admin;                       // 1 = admin, 0 = normal 
    roomNumber_t last_access;               // 1, 2, 3 or 4 
} user_t;

struct __attribute__((packed)) packedUser_t
{
    uint8_t login[2];
    uint8_t password[2];
    uint8_t flags; // 1 bytes: 0-is_admin, 1-is_bloqued, 3:2- last_accsses    
};

/* Using to build id Can Protocol */
typedef enum 
{
    ADD,
    DEL,
    UPDATE
} commandType_t ;

/* LCD Display */
typedef enum
{
  LINE_1 = 0x0000,
  LINE_2 = 0x0100,
  LINE_3 = 0x0200,
  LINE_4 = 0x0300           
} LinePositionScreen_t;

#endif	/* COMMONS_HPP */

