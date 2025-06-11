/* 
 * File:   debug_uart.hpp
 * Author: Bianca
 *
 * Created on June 7, 2025, 9:54 PM
 */

#ifndef DEBUG_UART_HPP
#define	DEBUG_UART_HPP

#include <stdint.h>
#include "peripheral/uart/plib_uart2.h"

typedef enum
{
    UART2 = 2
            
} UartHandle_t;

class DebugUart
{
public:
    DebugUart(UartHandle_t uart);
    
    void read(uint8_t *rx_buffer, uint16_t size);
    void write(uint8_t *tx_buffer, uint16_t size);
    
    static void rxCallback(uintptr_t context);
    static void txCallback(uintptr_t context);
    
    bool byteRead(uint8_t* byte);
    
private:
    UartHandle_t m_uart;
    
    void registerCallbacks();
};

#endif	/* DEBUG_UART_HPP */

