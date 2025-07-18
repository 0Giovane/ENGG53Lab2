/* 
 * File:   debug_uart.hpp
 * Author: Bianca
 *
 * Created on June 7, 2025, 9:54 PM
 */

#ifndef DEBUG_UART_HPP
#define DEBUG_UART_HPP

#include <stdint.h>
#include <string.h>
#include <stdio.h>
#include <stdarg.h>

#define UART_TX_BUFFER_SIZE 256

class DebugUart
{
public:
    DebugUart();

    void init();
    bool write(uint8_t* tx_data, uint16_t size); 
    bool read (uint8_t* rx_data, uint16_t size); 
    bool byteRead(uint8_t* byte);            

    void print (const char* str);
    void printf(const char* fmt, ...);

    bool isTxDone() const;   
    bool isRxDone() const;   
    bool isBusy () const;    

    void resetTxFlag();     
    void resetRxFlag();      

private:
    volatile bool m_tx_done;
    volatile bool m_rx_done;
    bool m_transmitting;
    bool m_receiving;
    
    char m_tx_buffer[UART_TX_BUFFER_SIZE];

    static void txCallback(uintptr_t context);
    static void rxCallback(uintptr_t context);
    void registerCallbacks();
};

#endif /* DEBUG_UART_HPP */