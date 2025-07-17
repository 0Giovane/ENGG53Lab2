#include "definitions.h"

// 📌 Endereço I2C base da EEPROM (ex: 24LC64 com A0-A2 em GND)
#define EEPROM_ADDR 0x50

// 📌 Endereço interno da EEPROM onde vamos escrever
#define MEM_ADDR_HI 0x00  // MSB do endereço interno (0x0000)
#define MEM_ADDR_LO 0x00  // LSB do endereço interno

// 📌 Valor para gravar
volatile uint8_t value_to_write = 0x5A;
volatile uint8_t value_read = 0x00;

int main(void)
{
    SYS_Initialize(NULL);

    bool write_ok = false;
    bool read_ok = false;
    bool match_ok = false;


    uint8_t tx_buffer[3] = {MEM_ADDR_HI, MEM_ADDR_LO, value_to_write};
    write_ok = I2C1_Write(EEPROM_ADDR, tx_buffer, 3);

    // Espera a operação terminar
    while (I2C1_IsBusy());

    // Delay para aguardar EEPROM gravar (~10ms)
    for (volatile int i = 0; i < 500000; i++);


    uint8_t addr_bytes[2] = {MEM_ADDR_HI, MEM_ADDR_LO};
    read_ok = I2C1_WriteRead(EEPROM_ADDR, addr_bytes, 2, &value_read, 1);

    while (I2C1_IsBusy());

  

    match_ok = (value_read == value_to_write); //COLOCAR BREAK POINT AQUI
  
    //

    if (write_ok && read_ok && match_ok)
    {
        LATDSET = (1 << 0);  
    }
    else
    {
        LATDCLR = (1 << 0);  
    }

    while (1);
}

