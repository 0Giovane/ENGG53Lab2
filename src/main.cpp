#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes
//#define CAN_APP_RX_FIFO     1 
#include "../Lab2Project_v0.X/APP_FILES/can.h"
// RE5=LED_CAN_5=ADD person R6=LED6=Toggle e RE7 = LEDS 7 = TEST
#include "../Lab2Project_v0.X/APP_FILES/can_protocol.hpp"
#

static bool sendAddPerson = true;


int main(void)
{
    
    //uint8_t data_to_send[8] = {0};
    SYS_Initialize(NULL);

    //CAN_Init();
    CanProtocol CAN;
    CAN.init();
    while (true)
    {
        SYS_Tasks();
        
        if(sendAddPerson){
        message_t msg;
        msg.type = ADD_PERSON;
//        data_to_send[0] = 0x01; // Ex: ID da pessoa
//        data_to_send[1] = 0xAA; // Ex: Algum status inicial
        msg.data[0] = 0x01;
        msg.data[1] = 0xAA;
        //CAN_SendMessage(messageId, 2, data_to_send, CAN_MSG_TX_DATA_FRAME);
        msg.length = 2;
        bool ret = CAN.sendMessage(msg);
        if (ret)
        {
             LED_DANIEL_Toggle();  
        }
        
        
        sendAddPerson = !sendAddPerson;
        
        }
       // TESTAR direto sem Callback 
        uint32_t receivedId;
        uint8_t receivedLength;
        uint8_t receivedData[8];
        uint16_t receivedTimestamp; 
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
        else
        {
            GPIO_RE6_Toggle();
        }
   
    }
 
    return EXIT_FAILURE;
}
