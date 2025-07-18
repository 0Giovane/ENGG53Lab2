#include <xc.h>
#include "definitions.h"
#include "lcd_12864.hpp"

Lcd12864::Lcd12864(LcdDrvSt7920& lcd_driver): m_lcd_driver(lcd_driver){}

void Lcd12864::init()
{
    clear();   
}

void Lcd12864::update()
{
    
}

void Lcd12864::clear()
{
    m_lcd_driver.clear();
}

void Lcd12864::writeChar(uint16_t row_col, uint8_t ascii)
{
    setTextAddress(row_col);
    m_lcd_driver.writeData(ascii);
}

void Lcd12864::writeString(uint16_t row_col, const char* str)
{
    setTextAddress(row_col);
    while (*str)
    {
        m_lcd_driver.writeData(*str++);
    }
}

void Lcd12864::setTextAddress(uint16_t row_col)
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

    m_lcd_driver.writeCommand(address);
}