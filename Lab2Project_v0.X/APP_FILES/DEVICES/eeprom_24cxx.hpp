/* 
 * File:   eeprom_24cxx.hpp
 * Author: Bianca
 *
 * Created on June 4, 2025, 7:56 PM
 */

#ifndef EEPROM_24CXX_HPP
#define EEPROM_24CXX_HPP

#include <stdint.h>
#include <stddef.h>
#include "utils.hpp"

#define I2C_EEPROM_ADDRESS 0x50
#define BASE_ADDRESS 0x0000
#define SLOT_SIZE 16 //total users
#define MAX_INDEX 64
#define EEPROM_SIZE 32768 //32KB


class Eeprom24cxx
{
public:
    Eeprom24cxx();
    
    void init();
    void update();
    
    bool writeToIndex(uint16_t index, const void* w_data, uint16_t size);
    bool readFromIndex(uint16_t index, void* r_data, uint16_t size);
    
    bool readAllData(uint8_t* buffer, size_t slot_size, uint16_t max_slots);
    bool deleteAtAddress(uint16_t address);
    uint16_t findUserAddressByLogin(const char* login);
    
    bool isDone();
    
private:
    volatile bool m_is_done;
    
    static void callback(uintptr_t context);
    void registerCallback();
    
    bool write(uint16_t address, uint8_t* data, uint16_t size);
    bool read(uint16_t address, uint8_t* data, uint16_t size);
};

#endif /* EEPROM_24CXX_HPP */


