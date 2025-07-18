#include <xc.h>
#include <string.h>
#include "definitions.h"
#include "can_protocol.hpp"

void CanProtocol::txCallback(uintptr_t context)
{
    CanProtocol* self = reinterpret_cast<CanProtocol*>(context);
    self->m_tx_done = true;
}

void CanProtocol::rxCallback(uintptr_t context)
{
    CanProtocol* self = reinterpret_cast<CanProtocol*>(context);
    self->m_rx_pending = true;
}

CanProtocol::CanProtocol():
    m_state(CAN_IDLE),
    m_tx_done(false),
    m_rx_pending(false),
    m_tx_pending(false),
    m_rx_head(0),
    m_rx_tail(0),
    m_rx_full(false)
{}

void CanProtocol::init()
{
    registerCallbacks();
    CAN1_InterruptGet(CAN_FIFO_RX, CAN_FIFO_INTERRUPT_RXNEMPTYIF_MASK);
}

void CanProtocol::registerCallbacks()
{
    CAN1_CallbackRegister(CanProtocol::txCallback, (uintptr_t)this, CAN_FIFO_TX);
    CAN1_CallbackRegister(CanProtocol::rxCallback, (uintptr_t)this, CAN_FIFO_RX);
}

bool CanProtocol::enqueueTx(uint32_t id, uint8_t length, const uint8_t* data)
{
    if (m_tx_pending || length > CAN_MAX_DATA_LENGTH || id > 0x7FF)
    {
        return false;
    }
    
    m_tx_msg.id = id;
    m_tx_msg.length = length;
    memcpy(m_tx_msg.data, data, length);
    m_tx_pending = true;

    return true;
}

bool CanProtocol::hasRxMessage() const
{
    return (m_rx_head != m_rx_tail) || m_rx_full;
}

bool CanProtocol::dequeueRxMessage(canMessage_t& msg)
{
    if (!hasRxMessage())
    {
        return false;
    }
    msg = m_rx_queue[m_rx_tail];
    m_rx_tail = (m_rx_tail + 1) % CAN_RX_QUEUE_SIZE;
    m_rx_full = false;
    return true;
}

bool CanProtocol::buildMessageId(uint8_t board_id, uint8_t command_type, uint32_t& id)
{
    if ((board_id > 0x1F) || (command_type > 0x3F))
    {
        return false;
    }
    id = ((uint32_t)board_id << 6) | (command_type & 0x3F);
    return true;
}

void CanProtocol::pushRxQueue(const canMessage_t& msg)
{
    m_rx_queue[m_rx_head] = msg;
    m_rx_head = (m_rx_head + 1) % CAN_RX_QUEUE_SIZE;

    if (m_rx_head == m_rx_tail)
    {
        m_rx_full = true;
    }
}

void CanProtocol::update()
{
    handleTx();
    handleRx();
}

void CanProtocol::handleTx()
{
    switch (m_state)
    {
        case CAN_IDLE:
        {
            if (m_tx_pending && !CAN1_TxFIFOIsFull(CAN_FIFO_TX)) 
            {
                bool ret = CAN1_MessageTransmit(m_tx_msg.id, m_tx_msg.length, m_tx_msg.data, CAN_FIFO_TX,CAN_MSG_TX_DATA_FRAME);
                if (ret) 
                {
                    m_tx_done = false;
                    m_state = CAN_TX_WAIT;
                } else 
                {
                    m_state = CAN_IDLE;
                    m_tx_pending = false;
                }
            }
            break;
        }
        case CAN_TX_WAIT:
        {
            if (m_tx_done) 
            {
                m_tx_pending = false;
                m_tx_done = false;
                m_state = CAN_IDLE;
            }
            break;
        }
        default: m_state = CAN_IDLE; break;
    }
}

void CanProtocol::handleRx()
{
    if (!m_rx_pending && CAN1_InterruptGet(CAN_FIFO_RX, CAN_FIFO_INTERRUPT_RXNEMPTYIF_MASK))
    {
        m_rx_pending = true;
    }

    if (m_rx_pending)
    {
        canMessage_t msg;
        CAN_MSG_RX_ATTRIBUTE attr;
        bool ret = CAN1_MessageReceive(&msg.id, &msg.length, msg.data, &msg.timestamp, CAN_FIFO_RX, &attr);
        if (ret)
        {
            pushRxQueue(msg);
        }
        m_rx_pending = CAN1_InterruptGet(CAN_FIFO_RX, CAN_FIFO_INTERRUPT_RXNEMPTYIF_MASK);
    }
}
