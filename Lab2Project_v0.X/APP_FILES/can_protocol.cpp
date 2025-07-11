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
    self->m_rx_done = true;
}

CanProtocol::CanProtocol(): m_tx_done(false), m_rx_done(false){}

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

bool CanProtocol::write(uint32_t id, uint8_t length, uint8_t* data)
{
    if (CAN1_TxFIFOIsFull(CAN_FIFO_TX) || (id > 0x7FF) || (length > 8))
    {
        return false;
    }
     
    bool ret = CAN1_MessageTransmit(id, length, data, CAN_FIFO_TX, CAN_MSG_TX_DATA_FRAME);
    return ret;
}

bool CanProtocol::read(uint32_t* id, uint8_t* length, uint8_t* data, uint16_t* timestamp)
{
    if (!CAN1_InterruptGet(CAN_FIFO_RX, CAN_FIFO_INTERRUPT_RXNEMPTYIF_MASK))
    {
        return false;
    }
   
    CAN_MSG_RX_ATTRIBUTE attr;
    bool ret = CAN1_MessageReceive(id, length, data, timestamp, CAN_FIFO_RX, &attr);
    return ret;
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

bool CanProtocol::isTxDone() 
{ 
    return m_tx_done; 
}

bool CanProtocol::isRxDone() 
{ 
    return m_rx_done; 
}

void CanProtocol::setTxFlag() 
{ 
    m_tx_done = true; 
}

void CanProtocol::setRxFlag() 
{ 
    m_rx_done = true; 
}

void CanProtocol::resetTxFlag() 
{ 
    m_tx_done = false; 
}

void CanProtocol::resetRxFlag() 
{ 
    m_rx_done = false; 
}

