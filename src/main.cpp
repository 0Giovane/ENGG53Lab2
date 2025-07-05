#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes

#include "../Lab2Project_v0.X/APP_FILES/can.h"
// RE5=LED_CAN_5=ADD person R6=LED6=Toggle e RE7 = LEDS 7 = TEST
#include "../Lab2Project_v0.X/APP_FILES/can_protocol.hpp"
#

static bool sendAddPerson = true;


int main(void)
{
    

    SYS_Initialize(NULL);
    CanProtocol CAN;
    CAN.init();
 
            while (true)
    {
        SYS_Tasks();
        
       
        if(sendAddPerson){
        message_t msg;
        msg.type = ADD_PERSON;
        msg.data[0] = 0x01;
        msg.data[1] = 0xAA;
        msg.length = 2;
        bool ret = CAN.sendMessage(msg);
        CORETIMER_DelayUs(1000000);
        if (ret)
        {
            GPIO_RE6_Toggle(); 
        }
        else{
            //LED_DANIEL_Toggle();
        }
       
        //sendAddPerson = !sendAddPerson;
        
        }

         message_t msg;
         CAN_MSG_RX_ATTRIBUTE receivedAttributes;
         bool messageReceived = CAN1_MessageReceive(&msg.id, &msg.length, msg.data, &msg.timestamp, 1, &receivedAttributes);
       
        if (messageReceived)
        {
        GPIO_RE7_Toggle();
        }
       else
       {
LED_DANIEL_Toggle();
       }

   
    }
 
    return EXIT_FAILURE;
            }
