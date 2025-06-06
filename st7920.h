#ifndef __ST7290_H_
#define __ST7290_H_

#define MODE_8BIT       8 
#define MODE_4BIT       4
#define MODE_SERIAL     1

#define LCD_INTERFACE   MODE_SERIAL

#define LCD_DATA_DDR     TRISD
#define LCD_DATA_PIN     PORTD
#define LCD_DATA_PORT    LATD

#define LCD_RS_PORT      LATB
#define LCD_RS_PIN       4
#define LCD_RS_DDR       TRISB
#define LCD_EN_PORT      LATB
#define LCD_EN_PIN       6
#define LCD_EN_DDR       TRISB
#define LCD_RW_PORT      LATB
#define LCD_RW_PIN       5
#define LCD_RW_DDR       TRISB
#define LCD_MODE_PORT    LATB
#define LCD_MODE_PIN     2
#define LCD_MODE_DDR     TRISB
#define LCD_RST_PORT     LATB
#define LCD_RST_PIN      7
#define LCD_RST_DDR      TRISB

#define LCD_SID_PORT     LCD_RW_PORT  //SID=RW
#define LCD_SID_PIN      LCD_RW_PIN
#define LCD_SCLK_PORT    LCD_EN_PORT  //SCLK=E
#define LCD_SCLK_PIN     LCD_EN_PIN

#define LCD_DATA_PORT_D7 LCD_DATA_PORT
#define LCD_DATA_PORT_D6 LCD_DATA_PORT
#define LCD_DATA_PORT_D5 LCD_DATA_PORT
#define LCD_DATA_PORT_D4 LCD_DATA_PORT
#define LCD_DATA_PIN_D7  7
#define LCD_DATA_PIN_D6  6
#define LCD_DATA_PIN_D5  5
#define LCD_DATA_PIN_D4  4

#define LCD_EN_HIGH()      LCD_EN_PORT |= (1<<LCD_EN_PIN)
#define LCD_EN_LOW()       LCD_EN_PORT &=~(1<<LCD_EN_PIN)

#define LCD_CMD_MODE()     LCD_RS_PORT &=~(1<<LCD_RS_PIN)
#define LCD_DATA_MODE()    LCD_RS_PORT |= (1<<LCD_RS_PIN)

#define LCD_RW_HIGH()      LCD_RW_PORT |= (1<<LCD_RW_PIN)
#define LCD_RW_LOW()       LCD_RW_PORT &=~(1<<LCD_RW_PIN)

#define LCD_DATA_DDR_OUTPUT()  LCD_DATA_DDR = 0x00
#define LCD_DATA_DDR_INPUT()   LCD_DATA_DDR = 0xff

#define LCD_RS_OUTPUT()    LCD_RS_DDR   &=~ (1 << LCD_RS_PIN)
#define LCD_EN_OUTPUT()    LCD_EN_DDR   &=~ (1 << LCD_EN_PIN)
#define LCD_RW_OUTPUT()    LCD_RW_DDR   &=~ (1 << LCD_RW_PIN)
#define LCD_MODE_OUTPUT()  LCD_MODE_DDR &=~ (1 << LCD_MODE_PIN)
#define LCD_RST_OUTPUT()   LCD_RST_DDR  &=~ (1 << LCD_RST_PIN)

void LCD_clear(void);
void LCD_init(void);
void LCD_write_command(unsigned char command);
void LCD_write_data(unsigned char data);
void LCD_write_byte(unsigned char byte);
void LCD_write_half_byte(unsigned char half_byte);
void LCD2_spi_write_byte(unsigned char data);
void LCD2_spi_write_byte_standard(unsigned char data);
unsigned char LCD_read_data(void);
unsigned char LCD_read_status(void);
unsigned char LCD_read_byte(void);
void LCD_startGraphic(void);
void LCD_endGraphic(void);
void LCD_Inverse_16X16(unsigned int rowCol, unsigned char charNum, unsigned char reverse);
unsigned int LCD_rowCol_to_inter_Xy(unsigned int rowCol);
void LCD_set_text_address(unsigned int rowCol);
void LCD_set_graphic_address(unsigned char x, unsigned char y);
void LCD_write_char(unsigned int rowCol, unsigned int code);
void LCD_write_string(unsigned int rowCol, const char * p);

#if LCD_INTERFACE != MODE_SERIAL
void LCD_write_dot(unsigned char x, unsigned char y);
#endif

void LCD_update_state(unsigned int current_state);
void LCD_write_input(const char *input);
void LCD_write_output(const char *output);

#define BYTE_BIT(bitno) (1 << (bitno))
#define TEST_BIT(value, bitno) ((1 << (bitno)) & (value))
#define SET_BIT(value, bitno)  ((value) |= (1 << (bitno)))
#define CLR_BIT(value, bitno)  ((value) &= ~(1 << (bitno)))

#define ROW_COL(r, c) (((r) << 8) | (c & 0xff))

#endif