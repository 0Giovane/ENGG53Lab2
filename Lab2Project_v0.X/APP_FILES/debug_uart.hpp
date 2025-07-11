/* 
 * File:   debug_uart.hpp
 * Author: Bianca
 *
 * Created on June 7, 2025, 9:54 PM
 */

#ifndef DEBUG_UART_HPP
#define	DEBUG_UART_HPP

#include <stdint.h>

class DebugUart
{
public:
    DebugUart();
    
    void init();
    bool read(uint8_t *rx_buffer, uint16_t size);
    bool write(uint8_t *tx_buffer, uint16_t size);
        
    bool byteRead(uint8_t* byte);
    
    bool isTxDone();
    bool isRxDone();
    void setTxFlag();
    void setRxFlag();
    void resetTxFlag();
    void resetRxFlag();
    
private:
    volatile bool m_tx_done;
    volatile bool m_rx_done;
    
    static void rxCallback(uintptr_t context);
    static void txCallback(uintptr_t context);
    void registerCallbacks();
};

#endif	/* DEBUG_UART_HPP */

