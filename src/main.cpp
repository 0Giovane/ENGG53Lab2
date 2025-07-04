#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
#define CAN_APP_RX_FIFO     1 
#include "../Lab2Project_v0.X/APP_FILES/can.h"
// RE5=LED_CAN_5=ADD person R6=LED6=Toggle e RE7 = LEDS 7 = TEST

static bool sendAddPerson = true;


int main(void)
{
    
    uint8_t data_to_send[8] = {0};
    SYS_Initialize(NULL);


    CAN_Init();

    while (true)
    {
        SYS_Tasks();
        if(sendAddPerson){
        uint32_t messageId = CAN_BuildMessageId(MY_BOARD_ID, ADD_PERSON);
        data_to_send[0] = 0x01; // Ex: ID da pessoa
        data_to_send[1] = 0xAA; // Ex: Algum status inicial
        CAN_SendMessage(messageId, 2, data_to_send, CAN_MSG_TX_DATA_FRAME);
        
        sendAddPerson = !sendAddPerson;
        
        }
        /* TESTAR direto sem Callback 
    uint32_t receivedId;
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
        GPIO_PinToggle(GPIO_PIN_RE7);
    }
   */
    }
 

    return EXIT_FAILURE;
}
