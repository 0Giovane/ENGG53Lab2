#include <xc.h>
#include "definitions.h"
#include "eeprom_24cxx.hpp"
#include "../UTILS/utils.hpp"

void Eeprom24cxx::callback(uintptr_t context)
{
    Eeprom24cxx* self = reinterpret_cast<Eeprom24cxx*>(context);
    self->m_transfer_done = true;
}

Eeprom24cxx::Eeprom24cxx():
    m_transfer_done(true),
    m_current_state(EEPROM_IDLE),
    m_delay_counter(0),
    m_current_address(0),
    m_data_size(0),
    m_target_buffer(nullptr)
{}

void Eeprom24cxx::init()
{
    registerCallback();
}

void Eeprom24cxx::registerCallback()
{
    I2C1_CallbackRegister(Eeprom24cxx::callback, (uintptr_t)this);
}

bool Eeprom24cxx::writeToIndex(uint16_t index, const void* w_data, uint16_t size)
{
    if (index >= EEPROM_MAX_INDEX || size > EEPROM_SLOT_SIZE || w_data == nullptr)
    {
        return false;
    }
    uint16_t address = EEPROM_BASE_ADDRESS + (index * EEPROM_SLOT_SIZE);
    return write(address, static_cast<const uint8_t*>(w_data), size);
}

bool Eeprom24cxx::readFromIndex(uint16_t index, void* r_data, uint16_t size)
{
    if (index >= EEPROM_MAX_INDEX || size > EEPROM_SLOT_SIZE || r_data == nullptr)
    {
        return false;
    }
    uint16_t address = EEPROM_BASE_ADDRESS + (index * EEPROM_SLOT_SIZE);
    return read(address, static_cast<uint8_t*>(r_data), size);
}

bool Eeprom24cxx::write(uint16_t address, const uint8_t* data, uint16_t size)
{
    if (m_current_state != EEPROM_IDLE)
    {
        return false;
    }
    
    m_current_address = address;
    m_data_size       = size;

    m_buffer[0] = static_cast<uint8_t>(address >> 8);
    m_buffer[1] = static_cast<uint8_t>(address & 0xFF);
    memcpy(&m_buffer[2], data, size);

    m_transfer_done  = false;
    m_current_state  = EEPROM_WRITE_START;
    return true;
}

bool Eeprom24cxx::read(uint16_t address, uint8_t* data, uint16_t size)
{
    if (m_current_state != EEPROM_IDLE)
    {
        return false;
    }

    m_current_address = address;
    m_data_size       = size;
    m_target_buffer   = data;

    m_buffer[0] = static_cast<uint8_t>(address >> 8);
    m_buffer[1] = static_cast<uint8_t>(address & 0xFF);

    m_transfer_done  = false;
    m_current_state  = EEPROM_READ_START;
    return true;
}

void Eeprom24cxx::update()
{
    switch (m_current_state)
    {
        case EEPROM_WRITE_START:
        {
            if (I2C1_Write(I2C_EEPROM_ADDRESS, m_buffer, m_data_size + 2))
            {
                m_current_state = EEPROM_WRITE_WAIT_BUS;
            }
            else
            {
                m_current_state = EEPROM_ERROR;      
            }
            break;
        }
        case EEPROM_WRITE_WAIT_BUS:
        {
            if (m_transfer_done)              
            {
                m_delay_counter = 0;          
                m_current_state = EEPROM_WRITE_WAIT_CYCLE;
            }
            break;
        }
        case EEPROM_WRITE_WAIT_CYCLE:
        {
            if (++m_delay_counter >= EEPROM_WRITE_DELAY_MS)
            {
                m_current_state = EEPROM_IDLE;       
            }
            break;
        }
        case EEPROM_READ_START:
        {
            if (I2C1_WriteRead(I2C_EEPROM_ADDRESS, m_buffer, 2, m_target_buffer, m_data_size))
            {
                m_current_state = EEPROM_READ_WAIT;
            }
            else
            {
                m_current_state = EEPROM_ERROR;
            }
            break;
        }
        case EEPROM_READ_WAIT:
        {
            if (m_transfer_done)              
            {
                m_current_state = EEPROM_IDLE;
            }
            break;
        }
        default: EEPROM_IDLE; break;
    }
}

bool Eeprom24cxx::isBusy() const
{
    return m_current_state != EEPROM_IDLE;
}

bool Eeprom24cxx::hasError() const
{ 
    return m_current_state == EEPROM_ERROR; 
}