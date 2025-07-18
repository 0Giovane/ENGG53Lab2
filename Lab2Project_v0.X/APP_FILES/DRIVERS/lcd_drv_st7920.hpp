/* 
 * File:   lcd_drv_st7920.hpp
 * Author: Bianca
 *
 * Created on June 8, 2025, 11:03 AM
 */

#ifndef LCD_DRV_ST7920_HPP
#define	LCD_DRV_ST7920_HPP

#include <stdint.h>

// Implemented serial mode only
class LcdDrvSt7920
{
public:
    LcdDrvSt7920();

    void init();
    void clear();

    void writeCommand(uint8_t command);
    void writeData(uint8_t data);
    
    void startGraphic();
    void endGraphic();
        
private:
    // Main function (RS: 0=command, 1=data)
    void sendSerial(uint8_t rs, uint8_t data);
    
    // bit-bang
    void sendBit(bool bit);
    void sendByte(uint8_t byte);
};

#endif	/* LCD_DRV_ST7920_HPP */


