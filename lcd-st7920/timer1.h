/* 
 * File:   timer1.h
 * Author: felip
 *
 * Created on 27 de Abril de 2025, 19:19
 */

#ifndef TIMER1_H
#define	TIMER1_H

#ifdef	__cplusplus
extern "C" {
#endif

void timer1_init(void);

void delay_us(unsigned int microseconds);

void delay_ms(unsigned int milliseconds);

#ifdef	__cplusplus
}
#endif

#endif	/* TIMER1_H */

