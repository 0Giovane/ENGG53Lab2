/* 
 * File:   can_protocol.hpp
 * Author: Bianca
 *
 * Created on July 10, 2025, 9:51 PM
 */

#ifndef CAN_PROTOCOL_HPP
#define	CAN_PROTOCOL_HPP

#include <stdint.h>
#include <stdbool.h>

#define CAN_FIFO_TX 0
#define CAN_FIFO_RX 1

class CanProtocol
{
public:
    CanProtocol();
    
    void init();
    void update();
    
    bool write(uint32_t id, uint8_t length, uint8_t* data);
    bool read(uint32_t* id, uint8_t* length, uint8_t* data, uint16_t* timestamp);
    bool buildMessageId(uint8_t board_id, uint8_t comand_type, uint32_t& id);
    
    bool isTxDone();
    bool isRxDone();
    void setTxFlag();
    void setRxFlag();
    void resetTxFlag();
    void resetRxFlag();
        
private:
    volatile bool m_tx_done;
    volatile bool m_rx_done;
    
    static void txCallback(uintptr_t context);
    static void rxCallback(uintptr_t context);
    void registerCallbacks();
};

#endif	/* CAN_PROTOCOL_HPP */

