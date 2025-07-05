/*******************************************************************************
  GPIO PLIB

  Company:
    Microchip Technology Inc.

  File Name:
    plib_gpio.h

  Summary:
    GPIO PLIB Header File

  Description:
    This library provides an interface to control and interact with Parallel
    Input/Output controller (GPIO) module.

*******************************************************************************/

/*******************************************************************************
* Copyright (C) 2019 Microchip Technology Inc. and its subsidiaries.
*
* Subject to your compliance with these terms, you may use Microchip software
* and any derivatives exclusively with Microchip products. It is your
* responsibility to comply with third party license terms applicable to your
* use of third party software (including open source software) that may
* accompany Microchip software.
*
* THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
* EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
* WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
* PARTICULAR PURPOSE.
*
* IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
* INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
* WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
* BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
* FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
* ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
* THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
*******************************************************************************/

#ifndef PLIB_GPIO_H
#define PLIB_GPIO_H

#include <device.h>
#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>

// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

    extern "C" {

#endif
// DOM-IGNORE-END

// *****************************************************************************
// *****************************************************************************
// Section: Data types and constants
// *****************************************************************************
// *****************************************************************************


/*** Macros for KEYPAD_ROW3 pin ***/
#define KEYPAD_ROW3_Set()               (LATGSET = (1<<15))
#define KEYPAD_ROW3_Clear()             (LATGCLR = (1<<15))
#define KEYPAD_ROW3_Toggle()            (LATGINV= (1<<15))
#define KEYPAD_ROW3_OutputEnable()      (TRISGCLR = (1<<15))
#define KEYPAD_ROW3_InputEnable()       (TRISGSET = (1<<15))
#define KEYPAD_ROW3_Get()               ((PORTG >> 15) & 0x1)
#define KEYPAD_ROW3_GetLatch()          ((LATG >> 15) & 0x1)
#define KEYPAD_ROW3_PIN                  GPIO_PIN_RG15

/*** Macros for LED_DANIEL pin ***/
#define LED_DANIEL_Set()               (LATESET = (1<<5))
#define LED_DANIEL_Clear()             (LATECLR = (1<<5))
#define LED_DANIEL_Toggle()            (LATEINV= (1<<5))
#define LED_DANIEL_OutputEnable()      (TRISECLR = (1<<5))
#define LED_DANIEL_InputEnable()       (TRISESET = (1<<5))
#define LED_DANIEL_Get()               ((PORTE >> 5) & 0x1)
#define LED_DANIEL_GetLatch()          ((LATE >> 5) & 0x1)
#define LED_DANIEL_PIN                  GPIO_PIN_RE5

/*** Macros for GPIO_RE6 pin ***/
#define GPIO_RE6_Set()               (LATESET = (1<<6))
#define GPIO_RE6_Clear()             (LATECLR = (1<<6))
#define GPIO_RE6_Toggle()            (LATEINV= (1<<6))
#define GPIO_RE6_OutputEnable()      (TRISECLR = (1<<6))
#define GPIO_RE6_InputEnable()       (TRISESET = (1<<6))
#define GPIO_RE6_Get()               ((PORTE >> 6) & 0x1)
#define GPIO_RE6_GetLatch()          ((LATE >> 6) & 0x1)
#define GPIO_RE6_PIN                  GPIO_PIN_RE6

/*** Macros for GPIO_RE7 pin ***/
#define GPIO_RE7_Set()               (LATESET = (1<<7))
#define GPIO_RE7_Clear()             (LATECLR = (1<<7))
#define GPIO_RE7_Toggle()            (LATEINV= (1<<7))
#define GPIO_RE7_OutputEnable()      (TRISECLR = (1<<7))
#define GPIO_RE7_InputEnable()       (TRISESET = (1<<7))
#define GPIO_RE7_Get()               ((PORTE >> 7) & 0x1)
#define GPIO_RE7_GetLatch()          ((LATE >> 7) & 0x1)
#define GPIO_RE7_PIN                  GPIO_PIN_RE7

/*** Macros for KEYPAD_COL1 pin ***/
#define KEYPAD_COL1_Set()               (LATGSET = (1<<6))
#define KEYPAD_COL1_Clear()             (LATGCLR = (1<<6))
#define KEYPAD_COL1_Toggle()            (LATGINV= (1<<6))
#define KEYPAD_COL1_OutputEnable()      (TRISGCLR = (1<<6))
#define KEYPAD_COL1_InputEnable()       (TRISGSET = (1<<6))
#define KEYPAD_COL1_Get()               ((PORTG >> 6) & 0x1)
#define KEYPAD_COL1_GetLatch()          ((LATG >> 6) & 0x1)
#define KEYPAD_COL1_PIN                  GPIO_PIN_RG6
#define KEYPAD_COL1_InterruptEnable()   (CNENGSET = (1<<6))
#define KEYPAD_COL1_InterruptDisable()  (CNENGCLR = (1<<6))

/*** Macros for KEYPAD_COL2 pin ***/
#define KEYPAD_COL2_Set()               (LATGSET = (1<<7))
#define KEYPAD_COL2_Clear()             (LATGCLR = (1<<7))
#define KEYPAD_COL2_Toggle()            (LATGINV= (1<<7))
#define KEYPAD_COL2_OutputEnable()      (TRISGCLR = (1<<7))
#define KEYPAD_COL2_InputEnable()       (TRISGSET = (1<<7))
#define KEYPAD_COL2_Get()               ((PORTG >> 7) & 0x1)
#define KEYPAD_COL2_GetLatch()          ((LATG >> 7) & 0x1)
#define KEYPAD_COL2_PIN                  GPIO_PIN_RG7
#define KEYPAD_COL2_InterruptEnable()   (CNENGSET = (1<<7))
#define KEYPAD_COL2_InterruptDisable()  (CNENGCLR = (1<<7))

/*** Macros for KEYPAD_COL3 pin ***/
#define KEYPAD_COL3_Set()               (LATGSET = (1<<8))
#define KEYPAD_COL3_Clear()             (LATGCLR = (1<<8))
#define KEYPAD_COL3_Toggle()            (LATGINV= (1<<8))
#define KEYPAD_COL3_OutputEnable()      (TRISGCLR = (1<<8))
#define KEYPAD_COL3_InputEnable()       (TRISGSET = (1<<8))
#define KEYPAD_COL3_Get()               ((PORTG >> 8) & 0x1)
#define KEYPAD_COL3_GetLatch()          ((LATG >> 8) & 0x1)
#define KEYPAD_COL3_PIN                  GPIO_PIN_RG8

/*** Macros for KEYPAD_COL4 pin ***/
#define KEYPAD_COL4_Set()               (LATGSET = (1<<9))
#define KEYPAD_COL4_Clear()             (LATGCLR = (1<<9))
#define KEYPAD_COL4_Toggle()            (LATGINV= (1<<9))
#define KEYPAD_COL4_OutputEnable()      (TRISGCLR = (1<<9))
#define KEYPAD_COL4_InputEnable()       (TRISGSET = (1<<9))
#define KEYPAD_COL4_Get()               ((PORTG >> 9) & 0x1)
#define KEYPAD_COL4_GetLatch()          ((LATG >> 9) & 0x1)
#define KEYPAD_COL4_PIN                  GPIO_PIN_RG9

/*** Macros for LCD_SID_RW pin ***/
#define LCD_SID_RW_Set()               (LATBSET = (1<<5))
#define LCD_SID_RW_Clear()             (LATBCLR = (1<<5))
#define LCD_SID_RW_Toggle()            (LATBINV= (1<<5))
#define LCD_SID_RW_OutputEnable()      (TRISBCLR = (1<<5))
#define LCD_SID_RW_InputEnable()       (TRISBSET = (1<<5))
#define LCD_SID_RW_Get()               ((PORTB >> 5) & 0x1)
#define LCD_SID_RW_GetLatch()          ((LATB >> 5) & 0x1)
#define LCD_SID_RW_PIN                  GPIO_PIN_RB5

/*** Macros for LCD_CS_RS pin ***/
#define LCD_CS_RS_Set()               (LATBSET = (1<<4))
#define LCD_CS_RS_Clear()             (LATBCLR = (1<<4))
#define LCD_CS_RS_Toggle()            (LATBINV= (1<<4))
#define LCD_CS_RS_OutputEnable()      (TRISBCLR = (1<<4))
#define LCD_CS_RS_InputEnable()       (TRISBSET = (1<<4))
#define LCD_CS_RS_Get()               ((PORTB >> 4) & 0x1)
#define LCD_CS_RS_GetLatch()          ((LATB >> 4) & 0x1)
#define LCD_CS_RS_PIN                  GPIO_PIN_RB4

/*** Macros for LCD_PSB_MODE pin ***/
#define LCD_PSB_MODE_Set()               (LATBSET = (1<<2))
#define LCD_PSB_MODE_Clear()             (LATBCLR = (1<<2))
#define LCD_PSB_MODE_Toggle()            (LATBINV= (1<<2))
#define LCD_PSB_MODE_OutputEnable()      (TRISBCLR = (1<<2))
#define LCD_PSB_MODE_InputEnable()       (TRISBSET = (1<<2))
#define LCD_PSB_MODE_Get()               ((PORTB >> 2) & 0x1)
#define LCD_PSB_MODE_GetLatch()          ((LATB >> 2) & 0x1)
#define LCD_PSB_MODE_PIN                  GPIO_PIN_RB2

/*** Macros for LCD_SCLK_EN pin ***/
#define LCD_SCLK_EN_Set()               (LATBSET = (1<<6))
#define LCD_SCLK_EN_Clear()             (LATBCLR = (1<<6))
#define LCD_SCLK_EN_Toggle()            (LATBINV= (1<<6))
#define LCD_SCLK_EN_OutputEnable()      (TRISBCLR = (1<<6))
#define LCD_SCLK_EN_InputEnable()       (TRISBSET = (1<<6))
#define LCD_SCLK_EN_Get()               ((PORTB >> 6) & 0x1)
#define LCD_SCLK_EN_GetLatch()          ((LATB >> 6) & 0x1)
#define LCD_SCLK_EN_PIN                  GPIO_PIN_RB6

/*** Macros for LCD_RST pin ***/
#define LCD_RST_Set()               (LATBSET = (1<<7))
#define LCD_RST_Clear()             (LATBCLR = (1<<7))
#define LCD_RST_Toggle()            (LATBINV= (1<<7))
#define LCD_RST_OutputEnable()      (TRISBCLR = (1<<7))
#define LCD_RST_InputEnable()       (TRISBSET = (1<<7))
#define LCD_RST_Get()               ((PORTB >> 7) & 0x1)
#define LCD_RST_GetLatch()          ((LATB >> 7) & 0x1)
#define LCD_RST_PIN                  GPIO_PIN_RB7

/*** Macros for UART2_RX pin ***/
#define UART2_RX_Get()               ((PORTF >> 4) & 0x1)
#define UART2_RX_GetLatch()          ((LATF >> 4) & 0x1)
#define UART2_RX_PIN                  GPIO_PIN_RF4

/*** Macros for UART2_TX pin ***/
#define UART2_TX_Get()               ((PORTF >> 5) & 0x1)
#define UART2_TX_GetLatch()          ((LATF >> 5) & 0x1)
#define UART2_TX_PIN                  GPIO_PIN_RF5

/*** Macros for KEYPAD_ROW5 pin ***/
#define KEYPAD_ROW5_Set()               (LATGSET = (1<<2))
#define KEYPAD_ROW5_Clear()             (LATGCLR = (1<<2))
#define KEYPAD_ROW5_Toggle()            (LATGINV= (1<<2))
#define KEYPAD_ROW5_OutputEnable()      (TRISGCLR = (1<<2))
#define KEYPAD_ROW5_InputEnable()       (TRISGSET = (1<<2))
#define KEYPAD_ROW5_Get()               ((PORTG >> 2) & 0x1)
#define KEYPAD_ROW5_GetLatch()          ((LATG >> 2) & 0x1)
#define KEYPAD_ROW5_PIN                  GPIO_PIN_RG2

/*** Macros for I2C1_SCL pin ***/
#define I2C1_SCL_Get()               ((PORTA >> 14) & 0x1)
#define I2C1_SCL_GetLatch()          ((LATA >> 14) & 0x1)
#define I2C1_SCL_PIN                  GPIO_PIN_RA14

/*** Macros for I2C1_SDA pin ***/
#define I2C1_SDA_Get()               ((PORTA >> 15) & 0x1)
#define I2C1_SDA_GetLatch()          ((LATA >> 15) & 0x1)
#define I2C1_SDA_PIN                  GPIO_PIN_RA15

/*** Macros for LED_L1 pin ***/
#define LED_L1_Set()               (LATDSET = (1<<8))
#define LED_L1_Clear()             (LATDCLR = (1<<8))
#define LED_L1_Toggle()            (LATDINV= (1<<8))
#define LED_L1_OutputEnable()      (TRISDCLR = (1<<8))
#define LED_L1_InputEnable()       (TRISDSET = (1<<8))
#define LED_L1_Get()               ((PORTD >> 8) & 0x1)
#define LED_L1_GetLatch()          ((LATD >> 8) & 0x1)
#define LED_L1_PIN                  GPIO_PIN_RD8

/*** Macros for LED_L2 pin ***/
#define LED_L2_Set()               (LATDSET = (1<<9))
#define LED_L2_Clear()             (LATDCLR = (1<<9))
#define LED_L2_Toggle()            (LATDINV= (1<<9))
#define LED_L2_OutputEnable()      (TRISDCLR = (1<<9))
#define LED_L2_InputEnable()       (TRISDSET = (1<<9))
#define LED_L2_Get()               ((PORTD >> 9) & 0x1)
#define LED_L2_GetLatch()          ((LATD >> 9) & 0x1)
#define LED_L2_PIN                  GPIO_PIN_RD9

/*** Macros for LED_L3 pin ***/
#define LED_L3_Set()               (LATDSET = (1<<10))
#define LED_L3_Clear()             (LATDCLR = (1<<10))
#define LED_L3_Toggle()            (LATDINV= (1<<10))
#define LED_L3_OutputEnable()      (TRISDCLR = (1<<10))
#define LED_L3_InputEnable()       (TRISDSET = (1<<10))
#define LED_L3_Get()               ((PORTD >> 10) & 0x1)
#define LED_L3_GetLatch()          ((LATD >> 10) & 0x1)
#define LED_L3_PIN                  GPIO_PIN_RD10

/*** Macros for LED_L4 pin ***/
#define LED_L4_Set()               (LATDSET = (1<<11))
#define LED_L4_Clear()             (LATDCLR = (1<<11))
#define LED_L4_Toggle()            (LATDINV= (1<<11))
#define LED_L4_OutputEnable()      (TRISDCLR = (1<<11))
#define LED_L4_InputEnable()       (TRISDSET = (1<<11))
#define LED_L4_Get()               ((PORTD >> 11) & 0x1)
#define LED_L4_GetLatch()          ((LATD >> 11) & 0x1)
#define LED_L4_PIN                  GPIO_PIN_RD11

/*** Macros for LED_TEST pin ***/
#define LED_TEST_Set()               (LATESET = (1<<0))
#define LED_TEST_Clear()             (LATECLR = (1<<0))
#define LED_TEST_Toggle()            (LATEINV= (1<<0))
#define LED_TEST_OutputEnable()      (TRISECLR = (1<<0))
#define LED_TEST_InputEnable()       (TRISESET = (1<<0))
#define LED_TEST_Get()               ((PORTE >> 0) & 0x1)
#define LED_TEST_GetLatch()          ((LATE >> 0) & 0x1)
#define LED_TEST_PIN                  GPIO_PIN_RE0

/*** Macros for KEYPAD_ROW1 pin ***/
#define KEYPAD_ROW1_Set()               (LATGSET = (1<<14))
#define KEYPAD_ROW1_Clear()             (LATGCLR = (1<<14))
#define KEYPAD_ROW1_Toggle()            (LATGINV= (1<<14))
#define KEYPAD_ROW1_OutputEnable()      (TRISGCLR = (1<<14))
#define KEYPAD_ROW1_InputEnable()       (TRISGSET = (1<<14))
#define KEYPAD_ROW1_Get()               ((PORTG >> 14) & 0x1)
#define KEYPAD_ROW1_GetLatch()          ((LATG >> 14) & 0x1)
#define KEYPAD_ROW1_PIN                  GPIO_PIN_RG14

/*** Macros for KEYPAD_ROW2 pin ***/
#define KEYPAD_ROW2_Set()               (LATGSET = (1<<12))
#define KEYPAD_ROW2_Clear()             (LATGCLR = (1<<12))
#define KEYPAD_ROW2_Toggle()            (LATGINV= (1<<12))
#define KEYPAD_ROW2_OutputEnable()      (TRISGCLR = (1<<12))
#define KEYPAD_ROW2_InputEnable()       (TRISGSET = (1<<12))
#define KEYPAD_ROW2_Get()               ((PORTG >> 12) & 0x1)
#define KEYPAD_ROW2_GetLatch()          ((LATG >> 12) & 0x1)
#define KEYPAD_ROW2_PIN                  GPIO_PIN_RG12

/*** Macros for KEYPAD_ROW4 pin ***/
#define KEYPAD_ROW4_Set()               (LATGSET = (1<<13))
#define KEYPAD_ROW4_Clear()             (LATGCLR = (1<<13))
#define KEYPAD_ROW4_Toggle()            (LATGINV= (1<<13))
#define KEYPAD_ROW4_OutputEnable()      (TRISGCLR = (1<<13))
#define KEYPAD_ROW4_InputEnable()       (TRISGSET = (1<<13))
#define KEYPAD_ROW4_Get()               ((PORTG >> 13) & 0x1)
#define KEYPAD_ROW4_GetLatch()          ((LATG >> 13) & 0x1)
#define KEYPAD_ROW4_PIN                  GPIO_PIN_RG13


// *****************************************************************************
/* GPIO Port

  Summary:
    Identifies the available GPIO Ports.

  Description:
    This enumeration identifies the available GPIO Ports.

  Remarks:
    The caller should not rely on the specific numbers assigned to any of
    these values as they may change from one processor to the next.

    Not all ports are available on all devices.  Refer to the specific
    device data sheet to determine which ports are supported.
*/


#define    GPIO_PORT_A   (0)
#define    GPIO_PORT_B   (1)
#define    GPIO_PORT_C   (2)
#define    GPIO_PORT_D   (3)
#define    GPIO_PORT_E   (4)
#define    GPIO_PORT_F   (5)
#define    GPIO_PORT_G   (6)
typedef uint32_t GPIO_PORT;

// *****************************************************************************
/* GPIO Port Pins

  Summary:
    Identifies the available GPIO port pins.

  Description:
    This enumeration identifies the available GPIO port pins.

  Remarks:
    The caller should not rely on the specific numbers assigned to any of
    these values as they may change from one processor to the next.

    Not all pins are available on all devices.  Refer to the specific
    device data sheet to determine which pins are supported.
*/
#define    GPIO_PIN_RA0   (0)
#define    GPIO_PIN_RA1   (1)
#define    GPIO_PIN_RA2   (2)
#define    GPIO_PIN_RA3   (3)
#define    GPIO_PIN_RA4   (4)
#define    GPIO_PIN_RA5   (5)
#define    GPIO_PIN_RA6   (6)
#define    GPIO_PIN_RA7   (7)
#define    GPIO_PIN_RA9   (9)
#define    GPIO_PIN_RA10   (10)
#define    GPIO_PIN_RA14   (14)
#define    GPIO_PIN_RA15   (15)
#define    GPIO_PIN_RB0   (16)
#define    GPIO_PIN_RB1   (17)
#define    GPIO_PIN_RB2   (18)
#define    GPIO_PIN_RB3   (19)
#define    GPIO_PIN_RB4   (20)
#define    GPIO_PIN_RB5   (21)
#define    GPIO_PIN_RB6   (22)
#define    GPIO_PIN_RB7   (23)
#define    GPIO_PIN_RB8   (24)
#define    GPIO_PIN_RB9   (25)
#define    GPIO_PIN_RB10   (26)
#define    GPIO_PIN_RB11   (27)
#define    GPIO_PIN_RB12   (28)
#define    GPIO_PIN_RB13   (29)
#define    GPIO_PIN_RB14   (30)
#define    GPIO_PIN_RB15   (31)
#define    GPIO_PIN_RC1   (33)
#define    GPIO_PIN_RC2   (34)
#define    GPIO_PIN_RC3   (35)
#define    GPIO_PIN_RC4   (36)
#define    GPIO_PIN_RC12   (44)
#define    GPIO_PIN_RC13   (45)
#define    GPIO_PIN_RC14   (46)
#define    GPIO_PIN_RC15   (47)
#define    GPIO_PIN_RD0   (48)
#define    GPIO_PIN_RD1   (49)
#define    GPIO_PIN_RD2   (50)
#define    GPIO_PIN_RD3   (51)
#define    GPIO_PIN_RD4   (52)
#define    GPIO_PIN_RD5   (53)
#define    GPIO_PIN_RD6   (54)
#define    GPIO_PIN_RD7   (55)
#define    GPIO_PIN_RD8   (56)
#define    GPIO_PIN_RD9   (57)
#define    GPIO_PIN_RD10   (58)
#define    GPIO_PIN_RD11   (59)
#define    GPIO_PIN_RD12   (60)
#define    GPIO_PIN_RD13   (61)
#define    GPIO_PIN_RD14   (62)
#define    GPIO_PIN_RD15   (63)
#define    GPIO_PIN_RE0   (64)
#define    GPIO_PIN_RE1   (65)
#define    GPIO_PIN_RE2   (66)
#define    GPIO_PIN_RE3   (67)
#define    GPIO_PIN_RE4   (68)
#define    GPIO_PIN_RE5   (69)
#define    GPIO_PIN_RE6   (70)
#define    GPIO_PIN_RE7   (71)
#define    GPIO_PIN_RE8   (72)
#define    GPIO_PIN_RE9   (73)
#define    GPIO_PIN_RF0   (80)
#define    GPIO_PIN_RF1   (81)
#define    GPIO_PIN_RF2   (82)
#define    GPIO_PIN_RF3   (83)
#define    GPIO_PIN_RF4   (84)
#define    GPIO_PIN_RF5   (85)
#define    GPIO_PIN_RF8   (88)
#define    GPIO_PIN_RF12   (92)
#define    GPIO_PIN_RF13   (93)
#define    GPIO_PIN_RG0   (96)
#define    GPIO_PIN_RG1   (97)
#define    GPIO_PIN_RG2   (98)
#define    GPIO_PIN_RG3   (99)
#define    GPIO_PIN_RG6   (102)
#define    GPIO_PIN_RG7   (103)
#define    GPIO_PIN_RG8   (104)
#define    GPIO_PIN_RG9   (105)
#define    GPIO_PIN_RG12   (108)
#define    GPIO_PIN_RG13   (109)
#define    GPIO_PIN_RG14   (110)
#define    GPIO_PIN_RG15   (111)

    /* This element should not be used in any of the GPIO APIs.
       It will be used by other modules or application to denote that none of the GPIO Pin is used */
#define    GPIO_PIN_NONE     (-1)

typedef uint32_t GPIO_PIN;

typedef enum
{
  CN0_PIN = 1 << 0,
  CN1_PIN = 1 << 1,
  CN2_PIN = 1 << 2,
  CN3_PIN = 1 << 3,
  CN4_PIN = 1 << 4,
  CN5_PIN = 1 << 5,
  CN6_PIN = 1 << 6,
  CN7_PIN = 1 << 7,
  CN8_PIN = 1 << 8,
  CN9_PIN = 1 << 9,
  CN10_PIN = 1 << 10,
  CN11_PIN = 1 << 11,
  CN12_PIN = 1 << 12,
  CN13_PIN = 1 << 13,
  CN14_PIN = 1 << 14,
  CN15_PIN = 1 << 15,
  CN16_PIN = 1 << 16,
  CN17_PIN = 1 << 17,
  CN18_PIN = 1 << 18,
  CN19_PIN = 1 << 19,
  CN20_PIN = 1 << 20,
  CN21_PIN = 1 << 21,
}CN_PIN;

typedef  void (*GPIO_PIN_CALLBACK) ( CN_PIN cnPin, uintptr_t context);

void GPIO_Initialize(void);

// *****************************************************************************
// *****************************************************************************
// Section: GPIO Functions which operates on multiple pins of a port
// *****************************************************************************
// *****************************************************************************

uint32_t GPIO_PortRead(GPIO_PORT port);

void GPIO_PortWrite(GPIO_PORT port, uint32_t mask, uint32_t value);

uint32_t GPIO_PortLatchRead ( GPIO_PORT port );

void GPIO_PortSet(GPIO_PORT port, uint32_t mask);

void GPIO_PortClear(GPIO_PORT port, uint32_t mask);

void GPIO_PortToggle(GPIO_PORT port, uint32_t mask);

void GPIO_PortInputEnable(GPIO_PORT port, uint32_t mask);

void GPIO_PortOutputEnable(GPIO_PORT port, uint32_t mask);

void GPIO_PinInterruptEnable(CN_PIN cnPin);

void GPIO_PinInterruptDisable(CN_PIN cnPin);

// *****************************************************************************
// *****************************************************************************
// Section: Local Data types and Prototypes
// *****************************************************************************
// *****************************************************************************

typedef struct {

    /* CN Pin number */
    CN_PIN                  cnPin;

    /* Corresponding GPIO pin name */
    GPIO_PIN                gpioPin;

    /* previous port pin value, need to be stored to check if it has changed later */
    bool                    prevPinValue;

    /* Callback for event on target pin*/
    GPIO_PIN_CALLBACK       callback;

    /* Callback Context */
    uintptr_t               context;

} GPIO_PIN_CALLBACK_OBJ;

// *****************************************************************************
// *****************************************************************************
// Section: GPIO Functions which operates on one pin at a time
// *****************************************************************************
// *****************************************************************************

static inline void GPIO_PinWrite(GPIO_PIN pin, bool value)
{
    GPIO_PortWrite((GPIO_PORT)(pin>>4), (uint32_t)(0x1UL) << (pin & 0xFU), (uint32_t)(value) << (pin & 0xFU));
}

static inline bool GPIO_PinRead(GPIO_PIN pin)
{
    return (bool)(((GPIO_PortRead((GPIO_PORT)(pin>>4U))) >> (pin & 0xFU)) & 0x1U);
}

static inline bool GPIO_PinLatchRead(GPIO_PIN pin)
{
    return (bool)((GPIO_PortLatchRead((GPIO_PORT)(pin>>4U)) >> (pin & 0xFU)) & 0x1U);
}

static inline void GPIO_PinToggle(GPIO_PIN pin)
{
    GPIO_PortToggle((GPIO_PORT)(pin>>4U), 0x1UL << (pin & 0xFU));
}

static inline void GPIO_PinSet(GPIO_PIN pin)
{
    GPIO_PortSet((GPIO_PORT)(pin>>4U), 0x1UL << (pin & 0xFU));
}

static inline void GPIO_PinClear(GPIO_PIN pin)
{
    GPIO_PortClear((GPIO_PORT)(pin>>4U), 0x1UL << (pin & 0xFU));
}

static inline void GPIO_PinInputEnable(GPIO_PIN pin)
{
    GPIO_PortInputEnable((GPIO_PORT)(pin>>4U), 0x1UL << (pin & 0xFU));
}

static inline void GPIO_PinOutputEnable(GPIO_PIN pin)
{
    GPIO_PortOutputEnable((GPIO_PORT)(pin>>4U), 0x1UL << (pin & 0xFU));
}

bool GPIO_PinInterruptCallbackRegister(
    CN_PIN cnPin,
    const GPIO_PIN_CALLBACK callback,
    uintptr_t context
);

// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

    }

#endif
// DOM-IGNORE-END
#endif // PLIB_GPIO_H
