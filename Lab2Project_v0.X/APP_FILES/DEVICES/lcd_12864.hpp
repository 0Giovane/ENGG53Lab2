/* 
 * File:   lcd_12864.hpp
 * Author: Bianca
 *
 * Created on 12 de Julho de 2025, 18:28
 */

#ifndef LCD_12864_HPP
#define	LCD_12864_HPP

#include <stdint.h>
#include <stdbool.h>
#include "DRIVERS/lcd_drv_st7920.hpp"

class Lcd12864
{
public:
    Lcd12864(LcdDrvSt7920& lcd_driver);
    
    void init();
    void update();
    
    void clear();
    void writeString(uint16_t row_col, const char* str);
    void writeChar(uint16_t row_col, uint8_t ascii);
    
    inline static uint16_t rowCol(uint8_t row, uint8_t col) { return (row << 8) | col; }
    
private:
    LcdDrvSt7920 m_lcd_driver;
    
    void setTextAddress(uint16_t row_col);
};

#endif	/* LCD_12864_HPP */

