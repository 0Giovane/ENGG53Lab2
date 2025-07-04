#ifndef CAN_H
#define CAN_H

#include <stdint.h> 
#include <stdbool.h> 
#include "definitions.h"
#include "peripheral/can/plib_can1.h"

#ifdef __cplusplus 
extern "C" {
#endif

#define ADD_PERSON      0x01
#define TOGGLE_STATUS   0x02


void CAN_RxCompleteHandler(uintptr_t contextHandle);
void CAN_TxCompleteHandler(uintptr_t contextHandle);
void CAN_ErrorHandler(uintptr_t contextHandle);

void CAN_Init(void);

bool CAN_SendMessage(uint32_t id, uint8_t length, uint8_t* data, CAN_MSG_TX_ATTRIBUTE msgAttr);

uint32_t CAN_BuildMessageId(uint8_t boardId, uint8_t messageType);

#ifdef __cplusplus 
}
#endif

#endif // CAN_H