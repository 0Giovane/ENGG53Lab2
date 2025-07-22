/* 
 * File:   eeprom_24cxx.hpp
 * Author: Bianca
 *
 * Created on June 4, 2025, 7:56 PM
 */

#ifndef EEPROM_24CXX_HPP
#define EEPROM_24CXX_HPP

#include <stdint.h>
#include <stdbool.h>
#include <string.h>

#define I2C_EEPROM_ADDRESS      0x50 /* eeprom 24C64N */
#define EEPROM_SIZE_BYTES       8192 /* 64 Kbits*/
#define EEPROM_PAGE_SIZE        32   /* bytes */
#define EEPROM_BASE_ADDRESS     0x0000
#define EEPROM_SLOT_SIZE        16
#define EEPROM_MAX_INDEX        512 /*(EEPROM_SIZE_BYTES / EEPROM_SLOT_SIZE)*/
#define EEPROM_WRITE_DELAY_MS   5
#define EEPROM_NO_SLOT_AVAILABLE 0xFFFF

#define EEPROM_USER_SLOT_SIZE sizeof(packedUser_t)  // = 5
#define EEPROM_USER_MAX       (EEPROM_SIZE_BYTES / EEPROM_USER_SLOT_SIZE)
typedef enum 
{
    EEPROM_IDLE,
    EEPROM_WRITE_START,     
    EEPROM_WRITE_WAIT_BUS, 
    EEPROM_WRITE_WAIT_CYCLE,
    EEPROM_READ_START,      
    EEPROM_READ_WAIT,       
    EEPROM_ERROR            
} eepromState_t;

class Eeprom24cxx
{
public:
    Eeprom24cxx();

    void init();                 
    void update();               

    bool writeToIndex(uint16_t index, const void* w_data, uint16_t size);
    bool readFromIndex (uint16_t index, void*   r_data, uint16_t size);
    uint16_t findFirstEmptySlot(); //returns the index

    bool isBusy () const;        
    bool hasError() const;

    bool write(uint16_t address, const uint8_t* data, uint16_t size);
    bool read (uint16_t address,       uint8_t* data, uint16_t size);

private:
    
    volatile bool m_transfer_done;      
    eepromState_t m_current_state;
    uint16_t m_delay_counter;           

    uint16_t m_current_address;
    uint16_t m_data_size;
    uint8_t  m_buffer[EEPROM_PAGE_SIZE + 2]; /* addr + payload*/
    uint8_t* m_target_buffer;                
    
    static void callback(uintptr_t context);
    void   registerCallback();

    
};

#endif /* EEPROM_24CXX_HPP */