#include <xc.h>
#include "definitions.h"
#include "debug_uart.hpp"

void DebugUart::txCallback(uintptr_t context)
{
    DebugUart* self = reinterpret_cast<DebugUart*>(context);
    self->m_tx_done      = true;
    self->m_transmitting = false;
}

void DebugUart::rxCallback(uintptr_t context)
{
    DebugUart* self = reinterpret_cast<DebugUart*>(context);
    self->m_rx_done   = true;
    self->m_receiving = false;
}

DebugUart::DebugUart():
    m_tx_done(true),
    m_transmitting(false),
    m_rx_done(true),
    m_receiving(false)
{}

void DebugUart::init()
{
    registerCallbacks();
}

void DebugUart::registerCallbacks()
{
    UART2_WriteCallbackRegister(DebugUart::txCallback, (uintptr_t)this);
    UART2_ReadCallbackRegister (DebugUart::rxCallback, (uintptr_t)this);
}

bool DebugUart::write(uint8_t* tx_data, uint16_t size)
{
    if (m_transmitting || (size == 0))
    {
        return false;
    }

    m_tx_done = false;
    m_transmitting = true;
    return UART2_Write(tx_data, size);
}

bool DebugUart::read(uint8_t* rx_data, uint16_t size)
{
    if (m_receiving || (size == 0))
    {
        return false;
    }

    m_rx_done   = false;
    m_receiving = true;
    return UART2_Read(rx_data, size); 
}

bool DebugUart::byteRead(uint8_t* byte)
{
    return UART2_Read(byte, 1);
}

void DebugUart::print(const char* str)
{
    size_t len = strlen(str);
    if (len == 0 || len >= UART_TX_BUFFER_SIZE) return;

    memcpy(m_tx_buffer, str, len);
    write(reinterpret_cast<uint8_t*>(m_tx_buffer), static_cast<uint16_t>(len));
}

void DebugUart::printf(const char* fmt, ...)
{
    va_list args;
    va_start(args, fmt);
    int len = vsnprintf(m_tx_buffer, UART_TX_BUFFER_SIZE, fmt, args);
    va_end(args);

    if (len <= 0 || len >= UART_TX_BUFFER_SIZE) return;

    write(reinterpret_cast<uint8_t*>(m_tx_buffer), static_cast<uint16_t>(len));
}

bool DebugUart::isTxDone() const 
{ 
    return m_tx_done; 
}

bool DebugUart::isRxDone() const 
{ 
    return m_rx_done; 
}

bool DebugUart::isBusy () const  
{ 
    return m_transmitting; 
}

void DebugUart::resetTxFlag() 
{ 
    m_tx_done = false; 
}
void DebugUart::resetRxFlag() 
{ 
    m_rx_done = false; 
}
