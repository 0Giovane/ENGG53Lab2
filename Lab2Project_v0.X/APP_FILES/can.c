#include "can.h"
#include "definitions.h" 
#include "peripheral/can/plib_can1.h"

#define CAN_APP_RX_FIFO     1 
#define CAN_APP_TX_FIFO     0 


void CAN_RxCompleteHandler(uintptr_t contextHandle)
{
    GPIO_PinToggle(GPIO_PIN_RE7);
    /*uint32_t receivedId;
    uint8_t receivedLength;
    uint8_t receivedData[8];
    uint16_t receivedTimestamp;; 
    CAN_MSG_RX_ATTRIBUTE receivedAttributes;
    bool messageReceived;
    messageReceived = CAN1_MessageReceive(
        &receivedId,
        &receivedLength,
        receivedData,
        &receivedTimestamp,
        CAN_APP_RX_FIFO, 
        &receivedAttributes
    );

    if (messageReceived)
    {
        
 
        uint8_t messageType = (uint8_t)((receivedId >> 3) & 0x0F);

        switch (messageType)
        {
            case ADD_PERSON:
               GPIO_PinToggle(GPIO_PIN_RE5);
                break;

            case TOGGLE_STATUS:
                GPIO_PinToggle(GPIO_PIN_RE6);
                break;
            default:
                GPIO_PinToggle(GPIO_PIN_RE7);
                break;
        }
    }*/
}

void CAN_TxCompleteHandler(uintptr_t contextHandle)
{
   GPIO_PinToggle(GPIO_PIN_RE5);
}

void CAN_ErrorHandler(uintptr_t contextHandle)
{

}

    void CAN_teste1(uintptr_t contextHandle)
{
GPIO_PinToggle(GPIO_PIN_RE6);
}
    
void CAN_Init(void)
{
    //CAN1_CallbackRegister(CAN_TxCompleteHandler, 0, CAN_APP_TX_FIFO);
    CAN1_CallbackRegister(CAN_RxCompleteHandler, 0, CAN_APP_RX_FIFO);
    //CAN1_CallbackRegister(CAN_teste1, 0, CAN_APP_TX_FIFO);
    //CAN1_ErrorCallbackRegister(CAN_ErrorHandler, 0);

}



bool CAN_SendMessage(uint32_t id, uint8_t length, uint8_t* data, CAN_MSG_TX_ATTRIBUTE msgAttr)
{
    if (CAN1_TxFIFOIsFull(CAN_APP_TX_FIFO))
    {
        return false; 
    }
    return CAN1_MessageTransmit(id, length, data, CAN_APP_TX_FIFO, msgAttr);
}

uint32_t CAN_BuildMessageId(uint8_t boardId, uint8_t messageType)
{
    uint32_t canId = 0;
    canId |= ((uint32_t)boardId << 7);
    canId |= ((uint32_t)messageType << 3);

    return canId;
}

