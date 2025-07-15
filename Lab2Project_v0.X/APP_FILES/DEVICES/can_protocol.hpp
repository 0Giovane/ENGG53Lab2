/* 
 * File:   can_protocol.hpp
 * Author: Bianca
 *
 * Created on July 10, 2025, 9:51 PM
 */

#ifndef CAN_PROTOCOL_HPP
#define CAN_PROTOCOL_HPP

#include <stdint.h>
#include <stdbool.h>

#define CAN_FIFO_TX 0
#define CAN_FIFO_RX 1

#define CAN_MAX_DATA_LENGTH 8
#define CAN_RX_QUEUE_SIZE 4

typedef struct {
    uint32_t id;
    uint8_t  length;
    uint8_t  data[8];
    uint16_t timestamp;
} canMessage_t;

typedef enum {
    CAN_IDLE,
    CAN_TX_WAIT,
    CAN_TX_DONE,
    CAN_RX_CHECK,
    CAN_RX_RECEIVE
} canState_t;

class CanProtocol
{
public:
    CanProtocol();

    void init();
    void update();

    bool enqueueTx(uint32_t id, uint8_t length, const uint8_t* data);
    bool hasRxMessage() const;
    bool dequeueRxMessage(canMessage_t& msg);
    bool buildMessageId(uint8_t board_id, uint8_t command_type, uint32_t& id);

private:
    volatile bool m_tx_done;
    volatile bool m_rx_pending;
    
    canState_t m_state;
    canMessage_t m_tx_msg;
    bool m_tx_pending;
    uint8_t m_rx_head;
    uint8_t m_rx_tail;
    bool m_rx_full;
    canMessage_t m_rx_queue[CAN_RX_QUEUE_SIZE];

    void handleTx();
    void handleRx();
    void pushRxQueue(const canMessage_t& msg);
    
    static void txCallback(uintptr_t context);
    static void rxCallback(uintptr_t context);
    void registerCallbacks();
};

#endif /* CAN_PROTOCOL_HPP */
