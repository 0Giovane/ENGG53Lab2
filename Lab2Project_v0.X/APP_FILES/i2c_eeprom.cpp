#include "i2c_eeprom.hpp"
#include "definitions.h"
#include <xc.h>
#include <string.h>

static volatile bool transfer_done = false;

void I2cEeprom::callback(uintptr_t context)
{
    transfer_done = true;
}

I2cEeprom::I2cEeprom()
{
    I2C1_CallbackRegister(I2cEeprom::callback, (uintptr_t)this);
}

void I2cEeprom::write(uint16_t address, uint8_t* data, uint16_t size)
{
    transfer_done = false;

    uint8_t buffer[size + 2];
    buffer[0] = (uint8_t)(address >> 8);     // MSB
    buffer[1] = (uint8_t)(address & 0xFF);   // LSB
    memcpy(&buffer[2], data, size);

    I2C1_Write(EEPROM_ADDRESS, buffer, size + 2);

    //while (!transfer_done);
    
    CORETIMER_DelayMs(20);
}

void I2cEeprom::read(uint16_t address, uint8_t* data, uint16_t size)
{
    transfer_done = false;

    uint8_t addr_bytes[2];
    addr_bytes[0] = (uint8_t)(address >> 8);
    addr_bytes[1] = (uint8_t)(address & 0xFF);

    I2C1_WriteRead(EEPROM_ADDRESS, addr_bytes, 2, data, size);

    //while (!transfer_done);
    CORETIMER_DelayMs(20);
}

bool I2cEeprom::isBusy()
{
    return !transfer_done;
}

//I2C NAO TEM UMA FUNCAO DE DELETE, ENTAO SOBRESCREVEREMOS O DADO COM 0xFF
uint16_t I2cEeprom::findUserAddressByLogin(const char* login)
{
    User_t temp_user;
    for (uint16_t i = 0; i < MAX_USERS; ++i)
    {
        uint16_t addr = EEPROM_USER_BASE_ADDR + i * EEPROM_USER_SIZE;
        read(addr, (uint8_t*)&temp_user, EEPROM_USER_SIZE);
        
        if (strcmp((char*)temp_user.login, login) == 0)
        {
            return addr; // usuário encontrado
        }
    }
    return 0xFFFF; // Not found
}

void I2cEeprom::deleteAtAddress(uint16_t address)
{
    uint8_t buffer[EEPROM_USER_SIZE + 2];
    buffer[0] = (uint8_t)(address >> 8);
    buffer[1] = (uint8_t)(address & 0xFF);

    for (int i = 2; i < EEPROM_USER_SIZE + 2; ++i)
        buffer[i] = 0;

    transfer_done = false;
    I2C1_Write(EEPROM_ADDRESS, buffer, EEPROM_USER_SIZE + 2);
    //while (!transfer_done);

    CORETIMER_DelayMs(20);
}
