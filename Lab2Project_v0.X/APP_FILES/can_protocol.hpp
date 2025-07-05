/* 
 * File:   can_protocol.hpp
 * Author: Bianca
 *
 * Created on 4 de Julho de 2025, 20:31
 */

#ifndef CAN_PROTOCOL_HPP
#define	CAN_PROTOCOL_HPP

#include <stdint.h> 
#include <stdbool.h> 
#include "definitions.h"
#include "peripheral/can/plib_can1.h"

// ID da placa
#define MY_BOARD_ID         0x05

// Message type
#define ADD_PERSON      0x01

#define TOGGLE_STATUS   0x02
#define CAN_APP_TX_FIFO 0
#define CAN_APP_RX_FIFO 1 

typedef struct
{ 
    uint32_t id;
    uint8_t type;
    uint8_t length; 
    uint8_t data[8];
    uint16_t timestamp;
} message_t;

class CanProtocol
{
public:
    CanProtocol();
    void init();
    bool sendMessage(message_t msg);
    bool receivedMessage(message_t msg);
    uint8_t getBoardId();
   
    static void txCallback(uintptr_t context_handle);
    static void rxCallback(uintptr_t context_handle);
private:
    uint8_t m_board_id;
    
    uint32_t buildMessageId(uint8_t board_id, uint8_t message_type);
};

#endif	/* CAN_PROTOCOL_HPP */

