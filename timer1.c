#include <xc.h>
#include "timer1.h"

// Suponha que seu Fcy = 16MHz (Fosc = 32MHz com PLL /2), então 1 ciclo = 62,5ns
void timer1_init() {
    T1CONbits.ON = 0;     // Desliga o timer
    T1CONbits.TCS = 0;     // Clock interno (Fcy)
    T1CONbits.TGATE = 0;   // Disable Gated Timer mode
    T1CONbits.TCKPS = 0b01; // Prescaler 1:8

    TMR1 = 0x0000;         // Zera o timer
    PR1 = 0xFFFF;          // Valor máximo (ajustaremos nas funções de delay)

    IFS0bits.T1IF = 0;     // Limpa flag de interrupção
    T1CONbits.ON = 1;     // Liga o timer
}

void delay_us(unsigned int microseconds) {
    unsigned int start = TMR1;
    // Cada incremento do TMR1 com prescaler 1:8 e Fcy = 16MHz dura 0.5us
    unsigned int ticks = (microseconds * 2);

    while ((unsigned int)(TMR1 - start) < ticks);
}

void delay_ms(unsigned int milliseconds) {
    while (milliseconds--) {
        delay_us(1000); // 1000us = 1ms
    }
}
/*
void _delay_ms(unsigned int ms) {
    unsigned int i, j;
    for(i = 0; i < ms; i++) {
        for(j = 0; j < 1000; j++) {
            Nop();
        }
    }
}

void _delay_us(unsigned int ms) {
    unsigned int i, j;
    for(i = 0; i < ms; i++) {
        for(j = 0; j < 1; j++) {
            Nop();
        }
    }
}
*/
