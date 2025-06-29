#include "debug_uart.hpp"
#include "definitions.h"
#include <string.h>

static volatile bool tx_done = false;
static volatile bool rx_done = false;

void DebugUart::rxCallback(uintptr_t context)
{
    rx_done = true;
}

void DebugUart::txCallback(uintptr_t context)
{
    tx_done = true;
}

DebugUart::DebugUart(UartHandle_t uart): m_uart(uart)
{
    registerCallbacks();
}

void DebugUart::registerCallbacks()
{
    switch (m_uart)
    {
        case UART2:
            UART2_ReadCallbackRegister(rxCallback, (uintptr_t)this);
            UART2_WriteCallbackRegister(txCallback, (uintptr_t)this);
            break;
        default:
            return;
    }
}

void DebugUart::read(uint8_t *rx_buffer, uint16_t size)
{
    rx_done = false;

    switch (m_uart)
    {
        case UART2:
            UART2_Read(rx_buffer, size);
            break;
        default:
            return;
    }

    //while (!rx_done); 
}

bool DebugUart::byteRead(uint8_t* byte)
{
    rx_done = false;

    switch (m_uart)
    {
        case UART2:
            UART2_Read(byte, 1);
            break;
        default:
            return false;
    }

    //while (!rx_done);
    return true;
}

void DebugUart::write(uint8_t *tx_buffer, uint16_t size)
{
    tx_done = false;

    switch (m_uart)
    {
        case UART2:
            UART2_Write(tx_buffer, size);
            break;
        default:
            return;
    }

    //while (!tx_done);
}




