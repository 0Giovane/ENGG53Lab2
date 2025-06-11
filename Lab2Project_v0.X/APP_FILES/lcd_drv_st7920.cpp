#include "lcd_drv_st7920.hpp"
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

LcdDrvSt7920::LcdDrvSt7920()
{
    LCD_CS_RS_OutputEnable();
    LCD_SID_RW_OutputEnable();
    LCD_SCLK_EN_OutputEnable();
    LCD_RST_OutputEnable();
    LCD_PSB_MODE_OutputEnable();

    // Fix serial mode (PSB = 0)
    LCD_PSB_MODE_Clear();
    LCD_CS_RS_Clear();
    LCD_SID_RW_Clear();
    LCD_SCLK_EN_Clear();
    
    LCD_RST_Set();
    delayMs(10);
}

void LcdDrvSt7920::init()
{
    // Reset do LCD
    LCD_RST_Clear();
    delayMs(10);
    LCD_RST_Set();
    delayMs(50);

    writeCommand(0x30); // Basic instruction set
    delayMs(5);
    writeCommand(0x30); // Repeat
    delayMs(5);
    writeCommand(0x0C); // Display ON, Cursor OFF, Blink OFF
    delayMs(5);
    writeCommand(0x01); // Clear display
    delayMs(10);
    writeCommand(0x06); // Entry mode set
    delayMs(5);
}

void LcdDrvSt7920::clear()
{
    writeCommand(0x01);
    delayMs(10);
}

void LcdDrvSt7920::writeCommand(uint8_t command)
{
    sendSerial(0, command);
}

void LcdDrvSt7920::writeData(uint8_t data)
{
    sendSerial(1, data);
}

void LcdDrvSt7920::writeChar(uint16_t row_col, uint8_t ascii)
{
    setTextAddress(row_col);
    writeData(ascii);
}

void LcdDrvSt7920::writeString(uint16_t row_col, const char* str)
{
    setTextAddress(row_col);
    while (*str)
    {
        writeData(*str++);
    }
}

void LcdDrvSt7920::setTextAddress(uint16_t row_col)
{
    uint8_t row = (row_col >> 8) & 0xFF;
    uint8_t col = row_col & 0xFF;
    uint8_t address;

    switch (row) {
        case 0: address = 0x80 + col; break;  // Line 1
        case 1: address = 0x90 + col; break;  // Line 2
        case 2: address = 0x88 + col; break;  // Line 3
        case 3: address = 0x98 + col; break;  // Line 4
        default: return;                      // Invalid line
    }

    writeCommand(address);
}

void LcdDrvSt7920::startGraphic()
{
    writeCommand(0x30); // Basic instruction
    writeCommand(0x34); // Extended instruction set
    writeCommand(0x36); // Enable graphics display
}

void LcdDrvSt7920::endGraphic()
{
    writeCommand(0x30); // Back to basic
}

void LcdDrvSt7920::sendSerial(uint8_t rs, uint8_t data)
{
    LCD_CS_RS_Set();  // CS active
    delayUs(1);
    
    uint8_t hi = 0xF8 | ((rs & 0x01) << 1); // 0xF8: 1111 1RS0
    uint8_t hi_data = data & 0xF0;
    uint8_t lo_data = (data << 4) & 0xF0;

    sendByte(hi);
    sendByte(hi_data);
    sendByte(lo_data);

    delayUs(50);     // Delay after send
    
    LCD_CS_RS_Clear();
    delayUs(1);
}

void LcdDrvSt7920::sendByte(uint8_t byte)
{
    for (int i = 0; i < 8; ++i)
    {
        sendBit((byte & 0x80) != 0);
        byte <<= 1;
    }
}

void LcdDrvSt7920::sendBit(bool bit)
{
    LCD_SCLK_EN_Clear();
    
    if (bit)
        LCD_SID_RW_Set();
    else
        LCD_SID_RW_Clear();

    delayUs(1);
    LCD_SCLK_EN_Set();
    delayUs(1);
}

void LcdDrvSt7920::delayUs(uint16_t us)
{
    // 16 NOPs per us to 16 MHz
    for (volatile uint16_t i = 0; i < (us * 16); ++i)
    {
        __asm__ volatile("nop");
    }
}

void LcdDrvSt7920::delayMs(uint16_t ms)
{
    while (ms--)
    {
        delayUs(1000);
    }
}
