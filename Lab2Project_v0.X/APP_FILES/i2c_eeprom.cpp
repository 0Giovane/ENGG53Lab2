#include <xc.h>
#include <string.h>
#include "definitions.h"
#include "i2c_eeprom.hpp"

void I2cEeprom::callback(uintptr_t context)
{
    I2cEeprom* self = reinterpret_cast<I2cEeprom*>(context);
    self->m_is_done = true;
}

I2cEeprom::I2cEeprom(): m_is_done(false){}
   
void I2cEeprom::init()
{
    registerCallback();
}

void I2cEeprom::registerCallback()
{
    I2C1_CallbackRegister(I2cEeprom::callback, (uintptr_t)this);
}

bool I2cEeprom::write(uint16_t address, uint8_t* data, uint16_t size)
{
    uint8_t buffer[size + 2];
    buffer[0] = (uint8_t)(address >> 8);     // MSB
    buffer[1] = (uint8_t)(address & 0xFF);   // LSB
    memcpy(&buffer[2], data, size);

    bool ret = I2C1_Write(I2C_EEPROM_ADDRESS, buffer, size + 2);
    return ret;
}

bool I2cEeprom::read(uint16_t address, uint8_t* data, uint16_t size)
{
    uint8_t addr_bytes[2];
    addr_bytes[0] = (uint8_t)(address >> 8);
    addr_bytes[1] = (uint8_t)(address & 0xFF);

    bool ret = I2C1_WriteRead(I2C_EEPROM_ADDRESS, addr_bytes, 2, data, size);
    return ret;
}

bool I2cEeprom::isDone()
{
    return m_is_done;
}
