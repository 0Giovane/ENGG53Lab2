#include <xc.h>

void timer2_init() {
    T2CONbits.ON = 0;     // Desliga o timer
    T2CONbits.TCS = 0;     // Clock interno 
    T2CONbits.TGATE = 0;   // Disable Gated Timer mode
    T2CONbits.TCKPS = 0b00; // Prescaler 1:1
    
    TMR2 = 0x0000;
    PR2 = 0x00FF;
    
    IFS0bits.T1IF = 0;     // Limpa flag de interrupção
    T1CONbits.ON = 1;     // Liga o timer
}

void delay_us(unsigned int microseconds) {
    unsigned int start = TMR2;
    // Cada incremento do TMR2 com prescaler 1:1 e Fcy = 8MHz dura 0.125us
    unsigned int ticks = (microseconds * 8);

    while ((unsigned int)(TMR2 - start) < ticks);
}
