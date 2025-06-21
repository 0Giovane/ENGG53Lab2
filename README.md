# Documentação do Projeto CANv2

Este projeto demonstra a comunicação CAN em um microcontrolador PIC32, utilizando o MPLAB Code Configurator (MCC). O código de exemplo implementa o envio e recebimento de mensagens CAN, além do controle de LEDs para sinalização de status.

## Pinos Usados para os LEDs

Os LEDs estão conectados às seguintes portas e pinos do microcontrolador:

- `LED_RX_PIN`: Conectado ao pino **RE0** (Porta E, pino 0). Este LED pisca quando uma mensagem CAN é recebida com sucesso.
- `LED_ADD_PIN`: Conectado ao pino **RE1** (Porta E, pino 1). Este LED pisca quando uma mensagem do tipo `TIPO_ADICIONAR` é recebida.
- `LED_LOGADO_PIN`: Conectado ao pino **RE2** (Porta E, pino 2). Este LED pisca quando uma mensagem do tipo `TIPO_LOGADO` é recebida.

Esses pinos são definidos no arquivo `main.c` e configurados como saídas digitais para controlar os LEDs.

## Pinos da Comunicação CAN

A comunicação CAN utiliza os seguintes pinos no kit de desenvolvimento:

- **AC1TX :** Pino `RF13`
- **AC1RX :** Pino `RF12`

## Estrutura do ID CAN de 11 bits

O ID da mensagem CAN de 11 bits é montado dinamicamente pela função `montar_id_can` para conter informações sobre a placa e o tipo de mensagem. A estrutura do ID é a seguinte:

| Bits        | Tamanho | Descrição                         |
| ----------- | ------- | --------------------------------- |
| 10, 9, 8, 7 | 4 bits  | **ID da Placa** (`ID_PLACA`)      |
| 6, 5, 4, 3  | 4 bits  | **Tipo de Mensagem** (`tipo_msg`) |
| 2, 1, 0     | 3 bits  | **Código Fixo** (`codigo_fixo`)   |

A função que realiza essa montagem é:

```c
uint16_t montar_id_can(uint8_t id_placa, uint8_t tipo_msg, uint8_t codigo_fixo) {
    return ((id_placa & 0x0F) << 7) | ((tipo_msg & 0x0F) << 3) | (codigo_fixo & 0x07);
}
```

Isso permite filtrar mensagens no receptor analisando partes específicas do ID.

## Saídas Usadas

As saídas utilizadas no código são os pinos dos LEDs mencionados acima (RE0, RE1, RE2). Elas são controladas pela função `GPIO_PinToggle()`, que inverte o estado lógico do pino (liga se estiver desligado e desliga se estiver ligado).

## Funções Auxiliares

### Função `delay_1s`

O projeto utiliza uma função `delay_1s` para criar uma pausa no loop principal.

```c
void delay_1s(void)
{
    volatile uint32_t i;
    for (i = 0; i < 10000000; i++) {
        // Delay artificial
    }
}
```

**Observação:** Esta função **não garante um atraso preciso de 1 segundo**. O tempo real de atraso depende da frequência de clock do processador e das otimizações do compilador. No entanto, para a finalidade deste projeto, ela funciona adequadamente como uma simples pausa, pois não há requisitos estritos de temporização.

## Como Usar a Função de Enviar Mensagem

Para enviar uma mensagem CAN, você deve usar a função `CAN1_MessageTransmit`. Embora o código de envio esteja comentado no `main.c`, aqui está um exemplo de como usá-lo:

```c
// 1. Montar o ID da mensagem CAN
//    ID_PLACA: Identificador da sua placa (ex: 0x01)
//    tipo_msg: Tipo da mensagem (ex: TIPO_LOGADO ou TIPO_ADICIONAR)
//    COD_FIXO: Um código fixo (ex: 0x00)
uint16_t tx_id = montar_id_can(ID_PLACA, tipo_msg, COD_FIXO);

// 2. Definir os dados que você quer enviar
uint8_t txData[8] = {0xAA, 0xBB, 0xCC, 0xDD, 0x11, 0x22, 0x33, 0x44};

// 3. Chamar a função de transmissão
bool txSuccess = CAN1_MessageTransmit(
    tx_id,             // O ID da mensagem montado
    8,                 // O tamanho dos dados em bytes (máximo 8)
    txData,            // O array de dados
    TX_FIFO,           // A FIFO de transmissão (definida como 0)
    CAN_MSG_TX_DATA_FRAME // O tipo de frame (frame de dados)
);

// 4. (Opcional) Verificar se a mensagem foi enviada com sucesso
if (txSuccess)
{
    // A mensagem foi colocada na fila de transmissão
}
```

## Como Usar a Função de Receber Mensagem

Para receber uma mensagem CAN, você utiliza a função `CAN1_MessageReceive`. Ela verifica se há uma nova mensagem na FIFO de recepção.

```c
// 1. Declarar variáveis para armazenar os dados recebidos
uint32_t rxId;
uint8_t rxLen;
uint8_t rxData[8];
uint16_t timestamp;
CAN_MSG_RX_ATTRIBUTE rxAttr;

// 2. Chamar a função de recepção em um loop
bool rxSuccess = CAN1_MessageReceive(
    &rxId,        // Ponteiro para armazenar o ID da mensagem recebida
    &rxLen,       // Ponteiro para armazenar o tamanho dos dados
    rxData,       // Array para armazenar os dados recebidos
    &timestamp,   // Ponteiro para armazenar o timestamp da mensagem
    RX_FIFO,      // A FIFO de recepção (definida como 1)
    &rxAttr       // Ponteiro para atributos da mensagem recebida
);

// 3. Verificar se uma mensagem foi recebida com sucesso
if (rxSuccess)
{
    // Processar a mensagem recebida
    // Ex: Extrair o tipo da mensagem do ID
    uint8_t tipo_msg_recebido = (rxId >> 3) & 0x0F;
    // ... fazer algo com os dados ...
}
```

## As Duas FIFOs (First-In, First-Out)

O periférico CAN do microcontrolador está configurado para usar duas "filas" de mensagens, conhecidas como FIFOs:

1.  **FIFO de Transmissão (TX_FIFO - número 0):**

    - **Função:** Armazenar as mensagens que você quer enviar para o barramento CAN.
    - **Tamanho:** Está configurada com um tamanho de **1 mensagem**. Isso significa que ela pode guardar uma única mensagem aguardando para ser enviada. Se você tentar enviar outra mensagem antes da primeira ter sido transmitida, a função `CAN1_MessageTransmit` retornará `false`.
    - **Uso:** É o buffer de saída. Quando você chama `CAN1_MessageTransmit`, a mensagem é colocada nesta FIFO.

2.  **FIFO de Recepção (RX_FIFO - número 1):**
    - **Função:** Armazenar as mensagens que chegam do barramento CAN.
    - **Tamanho:** Também está configurada com um tamanho de **1 mensagem**. Ela armazena a mensagem mais recente que foi recebida e que passou pelos filtros de aceitação. Se uma nova mensagem chegar antes de você ler a que já está na FIFO, a mensagem antiga será sobrescrita.
    - **Uso:** É o buffer de entrada. A função `CAN1_MessageReceive` lê a mensagem desta FIFO.

Em resumo, você tem uma fila de saída (TX) e uma de entrada (RX), ambas com capacidade para uma mensagem por vez.
