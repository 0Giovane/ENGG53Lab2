#include <xc.h>
#include <string.h>
#include "definitions.h"
#include "../DEVICES/eeprom_24cxx.hpp"

void Eeprom24cxx::callback(uintptr_t context)
{
    Eeprom24cxx* self = reinterpret_cast<Eeprom24cxx*>(context);
    self->m_is_done = true;
}

Eeprom24cxx::Eeprom24cxx(): m_is_done(false){}
   
void Eeprom24cxx::init()
{
    registerCallback();
}

void Eeprom24cxx::update()
{
    
}

bool Eeprom24cxx::writeToIndex(uint16_t index, const void* w_data, uint16_t size)
{
    if (index >= MAX_INDEX || size > SLOT_SIZE) return false;

    uint16_t address = BASE_ADDRESS + index * SLOT_SIZE;
    return write(address, (uint8_t*)w_data, size);
}

bool Eeprom24cxx::readFromIndex(uint16_t index, void* r_data, uint16_t size)
{
    if (index >= MAX_INDEX || size > SLOT_SIZE) return false;

    uint16_t address = BASE_ADDRESS + index * SLOT_SIZE;
    return read(address, static_cast<uint8_t*>(r_data), size);
}

bool Eeprom24cxx::readAllData(uint8_t* buffer, size_t slot_size, uint16_t max_slots)
{
//    for (uint16_t i = 0; i < max_slots; ++i) {
//        uint32_t address = BASE_ADDRESS + i * slot_size;
//        if (address + slot_size > EEPROM_SIZE)
//            return false;
//
//        if (!read(address, &buffer[i * slot_size], slot_size))
//            return false;
//    }
   return true;
}

bool Eeprom24cxx::deleteAtAddress(uint16_t address)
{
//    uint8_t buffer[SLOT_SIZE + 2];
//    buffer[0] = (uint8_t)(address >> 8);
//    buffer[1] = (uint8_t)(address & 0xFF);
//
//    for (int i = 2; i < SLOT_SIZE + 2; ++i)
//        buffer[i] = 0;
//
//    transfer_done = false;
//    write(I2C_EEPROM_ADDRESS, buffer, SLOT_SIZE + 2);
//    //while (!transfer_done);
//
//    CORETIMER_DelayMs(20);
    return true;
}

//I2C NAO TEM UMA FUNCAO DE DELETE, ENTAO SOBRESCREVEREMOS O DADO COM 0xFF
uint16_t Eeprom24cxx::findUserAddressByLogin(const char* login)
{
//    User_t temp_user;
//    for (uint16_t i = 0; i < MAX_INDEX; ++i)
//    {
//        uint16_t addr = BASE_ADDRESS + i * SLOT_SIZE;
//        read(addr, (uint8_t*)&temp_user, SLOT_SIZE);
//        
//        if (strcmp((char*)temp_user.login, login) == 0)
//        {
//            return addr; // usuário encontrado
//        }
//    }
    return 0xFFFF; // Not found
}

void Eeprom24cxx::registerCallback()
{
    I2C1_CallbackRegister(Eeprom24cxx::callback, (uintptr_t)this);
}

bool Eeprom24cxx::write(uint16_t address, uint8_t* data, uint16_t size)
{
    uint8_t buffer[size + 2];
    buffer[0] = (uint8_t)(address >> 8);     // MSB
    buffer[1] = (uint8_t)(address & 0xFF);   // LSB
    memcpy(&buffer[2], data, size);

    bool ret = I2C1_Write(I2C_EEPROM_ADDRESS, buffer, size + 2);
    return ret;
}

bool Eeprom24cxx::read(uint16_t address, uint8_t* data, uint16_t size)
{
    uint8_t addr_bytes[2];
    addr_bytes[0] = (uint8_t)(address >> 8);
    addr_bytes[1] = (uint8_t)(address & 0xFF);

    bool ret = I2C1_WriteRead(I2C_EEPROM_ADDRESS, addr_bytes, 2, data, size);
    return ret;
}

bool Eeprom24cxx::isDone()
{
    return m_is_done;
}
