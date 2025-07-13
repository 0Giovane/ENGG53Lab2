/* 
 * File:   i2c_eeprom.hpp
 * Author: Bianca
 *
 * Created on June 4, 2025, 7:56 PM
 */

#ifndef I2C_EEPROM_HPP
#define I2C_EEPROM_HPP

#include <stdint.h>
#include <stddef.h>
#include "utils.hpp"

#define I2C_EEPROM_ADDRESS 0x50

class I2cEeprom
{
public:
    I2cEeprom();
    
    void init();
    bool write(uint16_t address, uint8_t* data, uint16_t size);
    bool read(uint16_t address, uint8_t* data, uint16_t size);
    
    bool isDone();
    
private:
    volatile bool m_is_done;
    
    static void callback(uintptr_t context);
    void registerCallback();
};

#endif /* I2C_EEPROM_HPP */


