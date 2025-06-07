#include <xc.h>
#include "st7920.h"
#include "timer1.h"

void LCD_init(void)
{
    LCD_DATA_DDR_OUTPUT();
    LCD_RS_OUTPUT();
    LCD_EN_OUTPUT();
    LCD_RW_OUTPUT();
    LCD_MODE_OUTPUT();
    LCD_RST_OUTPUT();
            
    SET_BIT(LCD_RS_PORT, LCD_RS_PIN);
    SET_BIT(LCD_EN_PORT, LCD_EN_PIN);
    CLR_BIT(LCD_RW_PORT, LCD_RW_PIN);
    SET_BIT(LCD_RST_PORT, LCD_RST_PIN);
    
#if LCD_INTERFACE != MODE_SERIAL
    SET_BIT(LCD_MODE_PORT, LCD_MODE_PIN);
#else
    CLR_BIT(LCD_MODE_PORT, LCD_MODE_PIN);
#endif
            
    delay_ms(50);
    LCD_write_command(0x33);
    delay_ms(1);
    LCD_write_command(0x32);
    delay_ms(1);
#if LCD_INTERFACE == MODE_4BIT
    LCD_write_command(0x28);
    delay_ms(1);
    LCD_write_command(0x28);
    delay_ms(1);
#endif
    LCD_write_command(0x08);
    delay_ms(1);
    LCD_write_command(0x10);
    delay_ms(1);
    LCD_write_command(0x0C);
    delay_ms(1);
    LCD_write_command(0x01);
    delay_ms(10);
    LCD_write_command(0x06);
    delay_ms(10);
}

void LCD_write_command(unsigned char command)
{
#if LCD_INTERFACE == MODE_SERIAL
    CLR_BIT(LCD_SCLK_PORT, LCD_SCLK_PIN);
    LCD2_spi_write_byte(0xf8);
    Nop();
    LCD2_spi_write_byte_standard(command);
#else
    LCD_CMD_MODE();   //RS=0
    LCD_write_byte(command);
    delay_ms(1);
#endif
}

void LCD_write_data(unsigned char data)
{
#if LCD_INTERFACE == MODE_SERIAL
    CLR_BIT(LCD_SCLK_PORT, LCD_SCLK_PIN);
    LCD2_spi_write_byte(0xfa);
    Nop();
    LCD2_spi_write_byte_standard(data);
#else
    LCD_DATA_MODE();    //RS=1
    LCD_write_byte(data);
#endif
}

void LCD_write_byte(unsigned char data)
{
#if LCD_INTERFACE == MODE_4BIT
    LCD_write_half_byte(data);
    data <<= 4;
    LCD_write_half_byte(data);
#else
    LCD_DATA_PORT = data;
    LCD_RW_LOW();
    LCD_EN_HIGH();
    delay_us(10);
    LCD_EN_LOW();
    delay_us(10);
    LCD_RW_HIGH();
#endif
}

void LCD_write_half_byte(unsigned char half_byte)
{
    if (half_byte & 0x80)
        SET_BIT(LCD_DATA_PORT_D7, LCD_DATA_PIN_D7);
    else
        CLR_BIT(LCD_DATA_PORT_D7, LCD_DATA_PIN_D7);
    
    if (half_byte & 0x40)
        SET_BIT(LCD_DATA_PORT_D6, LCD_DATA_PIN_D6);
    else
        CLR_BIT(LCD_DATA_PORT_D6, LCD_DATA_PIN_D6);
    
    if (half_byte & 0x20)
        SET_BIT(LCD_DATA_PORT_D5, LCD_DATA_PIN_D5);
    else
        CLR_BIT(LCD_DATA_PORT_D5, LCD_DATA_PIN_D5);
    
    if (half_byte & 0x10)
        SET_BIT(LCD_DATA_PORT_D4, LCD_DATA_PIN_D4);
    else
        CLR_BIT(LCD_DATA_PORT_D4, LCD_DATA_PIN_D4);
    
    LCD_RW_LOW();
    LCD_EN_HIGH();
    delay_us(10);
    LCD_EN_LOW();
    delay_us(10); 
    LCD_RW_HIGH();
}

void LCD2_spi_write_byte(unsigned char data)
{
    unsigned char i;
    for(i=0; i<8; i++)
    {
        if (data & 0x80)
            SET_BIT(LCD_SID_PORT, LCD_SID_PIN);
        else
            CLR_BIT(LCD_SID_PORT, LCD_SID_PIN);

        Nop();
        Nop();
        CLR_BIT(LCD_SCLK_PORT, LCD_SCLK_PIN);
        Nop();
        SET_BIT(LCD_SCLK_PORT, LCD_SCLK_PIN);
        data <<= 1;
    }
}

void LCD2_spi_write_byte_standard(unsigned char data)
{
    LCD2_spi_write_byte(data & 0xf0);
    LCD2_spi_write_byte((data << 4) & 0xf0);
}

unsigned char LCD_read_data(void)
{
    unsigned char data;

    LCD_DATA_MODE();
    data = LCD_read_byte();

#if LCD_INTERFACE == MODE_4BIT
    data = (data & 0xf0) | ((LCD_read_byte() >> 4) & 0x0f);
#endif
    return data;
}

unsigned char LCD_read_status(void)
{
    unsigned char data;
    LCD_CMD_MODE();
    data = LCD_read_byte();
#if LCD_INTERFACE == MODE_4BIT
    data = (data & 0xf0) | ((LCD_read_byte() >> 4) & 0x0f);
#endif
    return data;
}

unsigned char LCD_read_byte(void)
{
    unsigned char data;
    LCD_DATA_DDR_INPUT();
    LCD_RW_HIGH();
    
    LCD_EN_LOW();
    delay_us(10);
    LCD_EN_HIGH();
    delay_us(10);

    data = LCD_DATA_PIN;
    LCD_EN_LOW();
    LCD_DATA_DDR_OUTPUT();
    return data;
}

void LCD_set_text_address(unsigned int rowCol)
{
    unsigned char start = 0x80;
    unsigned char row = (rowCol >> 8) & 0xff;
    unsigned char col = rowCol & 0xff;

    if (row == 1) {
        start = 0x90;
    }
    if (row == 2) {
        start = 0x88;
    }
    if (row == 3) {
        start = 0x98;
    }
    LCD_write_command(start + col);
}

unsigned int LCD_rowCol_to_inter_Xy(unsigned int rowCol)
{
    unsigned char row = (rowCol >> 8) & 0x03;
    unsigned char col = rowCol & 0x07;
    unsigned char x = col + 8 * (unsigned char)(row / 2);
    unsigned char y = (row * 16) & 0x1f;
    return (x << 8) | y;
}

void LCD_set_graphic_address(unsigned char x, unsigned char y)
{
    unsigned char xWord, downPage, yInter;

    x &= 0x7f;
    y &= 0x3f;
    xWord = x / 16;
    downPage = y / 32;
    yInter = y & 0x1f;
    
    LCD_write_command(0x80 + yInter); //???Y??
    LCD_write_command(0x80 + xWord + 8 * downPage);
}

void LCD_clear(void)
{
    unsigned char x, y;
    LCD_write_command(0x08);
    delay_us(100);
    LCD_write_command(0x01);

    LCD_startGraphic();
    for (y = 0; y < 32; y++)
    {
        LCD_write_command(0x80 + y); //y
        LCD_write_command(0x80 + 0); //x
        for (x = 0; x < 16; x++)
        {
            LCD_write_data(0x00);
            LCD_write_data(0x00);
        }
    }
    LCD_endGraphic();

    LCD_write_command(0x0C);  //???
    delay_ms(10);
}

void LCD_startGraphic(void)
{
#if LCD_INTERFACE == MODE_4BIT
    LCD_write_command(0x24);
    LCD_write_command(0x26);
#else
    LCD_write_command(0x34);
    LCD_write_command(0x36);
#endif
}

void LCD_endGraphic(void)
{
#if LCD_INTERFACE == MODE_4BIT
    LCD_write_command(0x26);
    LCD_write_command(0x20);
#else
    LCD_write_command(0x36);
    LCD_write_command(0x30);
#endif
}

void LCD_Inverse_16X16(unsigned int rowCol, unsigned char charNum, unsigned char reverse)
{
    unsigned char i, ch;
    unsigned int xy = LCD_rowCol_to_inter_Xy(rowCol);
    unsigned char x = (xy >> 8) & 0xff;
    unsigned char y = xy & 0x3f;

    LCD_startGraphic();
    for (i = 0; i < 16; i++)
    {
        LCD_write_command(0x80 + y + i);
        LCD_write_command(0x80 + x);       //x
        for (ch = 0; ch < charNum; ch++)
        {
            LCD_write_data(reverse ? 0xff : 0x00);
            LCD_write_data(reverse ? 0xff : 0x00);
        }
    }
    LCD_endGraphic();
}

void LCD_write_char(unsigned int rowCol, unsigned int code)
{
    unsigned char high = (code >> 8) & 0xff;
    unsigned char low = code & 0xff;
    LCD_set_text_address(rowCol);
    if (code > 0x80)
    {
        LCD_write_data(high);
    }
    LCD_write_data(low);
}

void LCD_write_string(unsigned int rowCol, const char *p)
{
    LCD_set_text_address(rowCol);
    while (*p != 0)
    {
        LCD_write_data(*p);
        p++;
    }
}

#if LCD_INTERFACE != MODE_SERIAL
void LCD_write_dot(unsigned char x, unsigned char y)
{
    unsigned char xBit, high, low;

    xBit = x & 0x0f;
    LCD_startGraphic();
    LCD_set_graphic_address(x, y);
    LCD_read_data();

    high = LCD_read_data();
    low = LCD_read_data();

    LCD_set_graphic_address(x, y);
    if (xBit < 8)
    {
        LCD_write_data(high | (0x01 << (7 - xBit)));
        LCD_write_data(low);
    }
    else
    {
        LCD_write_data(high);
        LCD_write_data(low | (0x01 << (15 - xBit)));
    }
    LCD_endGraphic();
}
#endif

void LCD_write_input(const char *input)
{
    LCD_write_string(0x0200, input);
}

void LCD_write_output(const char *output)
{
    LCD_write_string(0x0300, output);
}

// 1 = diga o que quer fazer (entrar na sala ou cadastrar novo user)
// 2 = insira login (para entrar na sala)
// 3 = insira senha (para entrar na sala)
// 4 = insira login (para cadastrar usuário)
// 5 = insira senha (para cadastrar usuário)
// 6 = insira se usuário para criar é comum ou admin
// 7 = insira login (do usuário a cadastrar)
// 8 = insira senha (do usuário a cadastrar)
void LCD_update_state(unsigned int current_state)
{
    switch (current_state) {
        case 1:
            LCD_write_string(0x0000, "(1) digite o");
            LCD_write_string(0x0100, "comando");
            break;
        case 2:
            LCD_write_string(0x0000, "(2) digite o");
            LCD_write_string(0x0100, "login");
            break;
        case 3:
            LCD_write_string(0x0000, "(3) digite a");
            LCD_write_string(0x0100, "senha");
            break;
        case 4:
            LCD_write_string(0x0000, "(4) digite o");
            LCD_write_string(0x0100, "login");
            break;
        case 5:
            LCD_write_string(0x0000, "(5) digite a");
            LCD_write_string(0x0100, "senha");
            break;
        case 6:
            LCD_write_string(0x0000, "(6) insira o");
            LCD_write_string(0x0100, "cargo");
            break;
        case 7:
            LCD_write_string(0x0000, "(7) digite o");
            LCD_write_string(0x0100, "login");
            break;
        case 8:
            LCD_write_string(0x0000, "(8) digite a");
            LCD_write_string(0x0100, "senha");
            break;
        default:
            LCD_write_string(0x0000, "estado");
            LCD_write_string(0x0100, "desconhecido");
            break;
    }
}