/* 
 * File:   i2c_eeprom.hpp
 * Author: Bianca
 *
 * Created on June 4, 2025, 7:56 PM
 */

#ifndef I2C_EEPROM_HPP
#define I2C_EEPROM_HPP

#include <xc.h>
#include <stdint.h>
#include <stddef.h>
#include "peripheral/i2c/master/plib_i2c1_master.h"

typedef enum
{
    I2C1 = 1
} I2cHandle_t;

class I2cEeprom
{
public:
    I2cEeprom();
    void write(uint16_t address, uint8_t* data, uint16_t size);
    void read(uint16_t address, uint8_t* data, uint16_t size);
    uint16_t findUserAddressByLogin(char* login);
    void deleteAtAddress(uint16_t address);
    bool isBusy();
    
private:
    I2cHandle_t m_i2c;

    static void callback(uintptr_t context);
    static constexpr uint8_t EEPROM_ADDRESS = 0x50;
};

#endif /* I2C_EEPROM_HPP */


