/* 
 * File:   lcd_drv_st7920.hpp
 * Author: Bianca
 *
 * Created on June 8, 2025, 11:03 AM
 */

#ifndef LCD_DRV_ST7920_HPP
#define	LCD_DRV_ST7920_HPP

#include <xc.h>
#include "definitions.h"

// Implemented serial mode only
class LcdDrvSt7920
{
public:
    LcdDrvSt7920();

    void init();
    void clear();

    void writeCommand(uint8_t command);
    void writeData(uint8_t data);
    
    void writeString(uint16_t row_col, const char* str);
    void writeChar(uint16_t row_col, uint8_t ascii);
    void setTextAddress(uint16_t row_col);

    void startGraphic();
    void endGraphic();
    
    inline static uint16_t rowCol(uint8_t row, uint8_t col) { return (row << 8) | col; }
    
    void delayUs(uint16_t us);
    void delayMs(uint16_t ms); 

private:
    // Main function (RS: 0=command, 1=data)
    void sendSerial(uint8_t rs, uint8_t data);
    
    // bit-bang
    void sendBit(bool bit);
    void sendByte(uint8_t byte);

//    static constexpr auto LCD_PSB_MODE = GPIO_PIN_RB2;
//    static constexpr auto LCD_CS_RS    = GPIO_PIN_RB4;
//    static constexpr auto LCD_SID_RW   = GPIO_PIN_RB5;
//    static constexpr auto LCD_SCLK_EN  = GPIO_PIN_RB6;
//    static constexpr auto LCD_RST      = GPIO_PIN_RB7;

};

#endif	/* LCD_DRV_ST7920_HPP */


