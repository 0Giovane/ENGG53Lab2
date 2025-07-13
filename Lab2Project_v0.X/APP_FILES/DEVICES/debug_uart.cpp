#include <xc.h>
#include "definitions.h"
#include "debug_uart.hpp"

void DebugUart::txCallback(uintptr_t context)
{
    DebugUart* self = reinterpret_cast<DebugUart*>(context);
    self->m_tx_done = true;
}

void DebugUart::rxCallback(uintptr_t context)
{
    DebugUart* self = reinterpret_cast<DebugUart*>(context);
    self->m_rx_done = true;
}

DebugUart::DebugUart(): m_tx_done(false), m_rx_done(false),m_tx_index(0), m_tx_length(0), m_transmitting(false){}

void DebugUart::init() 
{
    registerCallbacks();
}

void DebugUart::registerCallbacks()
{
    UART2_WriteCallbackRegister(DebugUart::txCallback, (uintptr_t)this);
    UART2_ReadCallbackRegister(DebugUart::rxCallback, (uintptr_t)this);
}

bool DebugUart::read(uint8_t *rx_buffer, uint16_t size)
{
    bool ret = UART2_Read(rx_buffer, size);
    return ret;
}

bool DebugUart::byteRead(uint8_t* byte)
{
    bool ret = UART2_Read(byte, 1);
    return ret;
}

bool DebugUart::write(uint8_t *tx_buffer, uint16_t size)
{
    bool ret = UART2_Write(tx_buffer, size);
    return ret;
}

bool DebugUart::isTxDone() 
{ 
    return m_tx_done; 
}

bool DebugUart::isRxDone() 
{ 
    return m_rx_done; 
}

void DebugUart::setTxFlag() 
{ 
    m_tx_done = true; 
}

void DebugUart::setRxFlag() 
{ 
    m_rx_done = true; 
}

void DebugUart::resetTxFlag() 
{ 
    m_tx_done = false; 
}

void DebugUart::resetRxFlag() 
{ 
    m_rx_done = false; 
}

void DebugUart::print(const char* str)
{
    size_t len = strlen(str);
    if (len == 0 || len >= UART_TX_BUFFER_SIZE)
        return;

    if (!m_transmitting) {
        memcpy(m_tx_buffer, str, len);
        m_tx_length = len;
        m_tx_index = 0;
        m_transmitting = true;
        m_tx_done = false;

        write(reinterpret_cast<uint8_t*>(&m_tx_buffer[0]), 1);
    }
}

void DebugUart::update()
{
    if (m_transmitting && m_tx_done) {
        m_tx_index++;

        if (m_tx_index < m_tx_length) {
            m_tx_done = false;
            write(reinterpret_cast<uint8_t*>(&m_tx_buffer[m_tx_index]), 1);
        } else {
            m_transmitting = false;
            m_tx_index = 0;
            m_tx_length = 0;
        }
    }
}


