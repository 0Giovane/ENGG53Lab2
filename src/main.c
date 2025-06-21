#include "definitions.h"
#include <stdint.h>

#define TX_FIFO         0
#define RX_FIFO         1
#define LED_RX_PIN      GPIO_PIN_RE0 
#define LED_ADD_PIN     GPIO_PIN_RE1 
#define LED_LOGADO_PIN  GPIO_PIN_RE2 
#define TX_DATA_LEN     8
#define TIPO_LOGADO     0x01  // 0001
#define TIPO_ADICIONAR  0x02  // 0010
#define ID_PLACA        0x01  // 0001
#define COD_FIXO        0x00  // 0000

uint8_t txData[TX_DATA_LEN] = {0xAA, 0xBB, 0xCC, 0xDD, 0x11, 0x22, 0x33, 0x44};
uint8_t rxData[8];
uint32_t rxId;
uint8_t rxLen;
uint16_t timestamp;
CAN_MSG_RX_ATTRIBUTE rxAttr;
uint8_t tipo_msg = TIPO_LOGADO; 

uint16_t tx_id;

void delay_1s(void)
{
    volatile uint32_t i;
    for (i = 0; i < 10000000; i++) {
        // Delay artificial
    }
}

uint16_t montar_id_can(uint8_t id_placa, uint8_t tipo_msg, uint8_t codigo_fixo) {
    return ((id_placa & 0x0F) << 7) | ((tipo_msg & 0x0F) << 3) | (codigo_fixo & 0x07);
}

int main(void)
{
    SYS_Initialize(NULL);

    while (1)
    {
        switch(tipo_msg) {
            case TIPO_LOGADO:
                tipo_msg = TIPO_ADICIONAR;
                break;
            case TIPO_ADICIONAR:
                tipo_msg = TIPO_LOGADO;
                break;
            default:
                tipo_msg = TIPO_LOGADO;
                break;
        }

       /* tx_id = montar_id_can(ID_PLACA, tipo_msg, COD_FIXO);
        bool txSuccess = CAN1_MessageTransmit(
            tx_id,
            TX_DATA_LEN,
            txData,
            TX_FIFO,
            CAN_MSG_TX_DATA_FRAME
        );

        if (txSuccess)
        {
            GPIO_PinToggle(LED_RX_PIN); 
        }*/

        bool rxSuccess = CAN1_MessageReceive(
            &rxId, &rxLen, rxData, &timestamp,
            RX_FIFO, &rxAttr
        );

        if (rxSuccess)
        {
            GPIO_PinToggle(LED_RX_PIN); 
            uint8_t tipo_msg_recebido = (rxId >> 3) & 0x0F;

            switch(tipo_msg_recebido) {
                case TIPO_LOGADO:
                    GPIO_PinToggle(LED_LOGADO_PIN);
                    break;
                case TIPO_ADICIONAR:
                    GPIO_PinToggle(LED_ADD_PIN);
                    break;
                default:
                    GPIO_PinToggle(LED_RX_PIN);
                    break;
            }
        }

        delay_1s();
        SYS_Tasks(); 
    }

    return (EXIT_FAILURE);
}
