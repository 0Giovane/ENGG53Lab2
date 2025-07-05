#include "can_protocol.hpp"

static volatile bool tx_done = true;
static volatile bool rx_done = true;

void CanProtocol::rxCallback(uintptr_t context)
{
    rx_done = true;
    //GPIO_PinToggle(GPIO_PIN_RE7); // Debug: toggle LED quando receber mensagem
}

void CanProtocol::txCallback(uintptr_t context)
{
    tx_done = true;
}

CanProtocol::CanProtocol()
{
    m_board_id = MY_BOARD_ID;
}

void CanProtocol::init()
{
    CAN1_CallbackRegister(txCallback, 0, CAN_APP_TX_FIFO);
    CAN1_CallbackRegister(rxCallback, 0, CAN_APP_RX_FIFO);
}

uint32_t CanProtocol::buildMessageId(uint8_t board_id, uint8_t message_type)
{
    uint32_t can_id = 0;
    can_id |= ((uint32_t)board_id << 7);
    can_id |= ((uint32_t)message_type << 3);

    return can_id;
}

bool CanProtocol::sendMessage(message_t msg)
{
    if (tx_done)
    {
        //tx_done = false;
        msg.id = buildMessageId(m_board_id, msg.type);
        if (CAN1_TxFIFOIsFull(CAN_APP_TX_FIFO))
        {
            return false; 
        }
        return CAN1_MessageTransmit(msg.id, msg.length, (uint8_t *)msg.data, CAN_APP_TX_FIFO, CAN_MSG_TX_DATA_FRAME);
    }
  
    return false;
}

bool CanProtocol::receivedMessage(message_t& msg)
{
    if (rx_done)
    {
        rx_done = true;    
        CAN_MSG_RX_ATTRIBUTE receivedAttributes;
        bool teste = CAN1_MessageReceive(&msg.id, &msg.length, msg.data, &msg.timestamp, 1, &receivedAttributes);
        return teste;
    }
    return false;
}