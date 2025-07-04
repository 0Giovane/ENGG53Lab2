/**************************************************************
 * File:   keyboard.c
 * Author: Joao Pedro Cerqueira
 * Date:   2025-06-06
 * Brief:  Implementation of matrix keyboard reading with
 * Change Notification (CN) interrupts for PIC32.
 **************************************************************/
#include <xc.h>
#include <sys/attribs.h>
#include "timer1.h"
#include <stdbool.h>
#include <string.h>
#include "keyboard.h"
#include "definitions.h" // Adicionado para LED_L1_Toggle(), se usado

extern volatile unsigned int input_current_size;
extern volatile int input_password_int;
extern volatile char asterisk[5];
volatile unsigned int oldG, newG; // used in CN interruptions!!!! We need to mantain the snapshot register up-to-date

// colunas - > inputs;
// linhas -> outputs; vamos mudá-las e pegar o resultado a partir das colunas
void Enable_keyboard(void){
    // INTCONSET = _INTCON_MVEC_MASK; // Gerenciado pelo Harmony
    // __builtin_enable_interrupts(); // Gerenciado pelo Harmony
    Keyboard_Configs();
}

void Keyboard_Configs(void){
    TRISACLR = 0x1F; // bitmask to define RA0 to RA4 as OUTPUTS (FIVE keyboard rows) 1111_1111_1111_1111_1111_1111_1110_0000
    TRISGSET = 0x3C0; // bitmask to define RG6, 7, 8, 9 as INPUTS (FOUR keyboard columns) 0000_0000_0000_0000_0000_0011_1100_0000
    LATACLR = 0x1F; // first, lets set all rows to 0. 1111_1111_1111_1111_1111_1111_1110_0000
    CNCONSET = _CNCON_ON_MASK; // turns CN on
    oldG = PORTG;
    CNENSET = 0xF00; //Enable CN function on "1" pins  0000_0000_0000_0000_0000_1111_0000_0000
    CNPUESET = 0xF00; //enable pull-up on the respective pins
    
    // IPC6bits.CNIP = 3; // set priority and sub-priority // Geralmente gerenciado pelo Harmony
    // IPC6bits.CNIS = 0; // Geralmente gerenciado pelo Harmony
    // IFS1CLR = _IFS1_CNIF_MASK; // Clears CN interruption flag // Geralmente gerenciado pelo Harmony
    // IEC1SET = _IEC1_CNIE_MASK; //Enable CN interruption // Geralmente gerenciado pelo Harmony

    // Registro do callback da interrupção de Change Notice
    // Substitua 'PLIB_CN_CallbackRegister' pelo nome exato da função no seu plib_cn.h ou definitions.h
    // Exemplo: CN_CallbackRegister(Keyboard_CN_Callback, 0);
    // Ou se não houver função de registro, pode ser que o plib_cn.c chame um ponteiro de função global,
    // que você precisaria setar manualmente (ex: CN_Callback = Keyboard_CN_Callback;).
    // O mais comum é ter uma função de registro.
    // **Você precisará encontrar a API correta para registrar o callback do Change Notification no seu projeto Harmony.**
    // Por exemplo, pode ser:
    // SYS_CN_CallbackRegister(Keyboard_CN_Callback, (uintptr_t)NULL);
    // Ou talvez:
    // PLIB_CN_CallbackRegister(Keyboard_CN_Callback, 0);
}

// REMOVIDO: '__ISR(_CHANGE_NOTICE_VECTOR, IPL3SOFT)' daqui
// Esta função agora é uma função de callback comum, não mais uma ISR direta
void Keyboard_CN_Callback(uintptr_t context){
    // IEC1CLR = _IEC1_CNIE_MASK; // Disables new interruptions // Geralmente gerenciado pelo Harmony
    // delay_ms(100); // **AVISO:** Evitar delay_ms em ISRs/callbacks de interrupção
    
    // Lógica de debouncing e detecção de tecla
    if ((PORTG & 0x3C0) != (oldG & 0x3C0)) { // Verifica se houve mudança nos bits de coluna relevantes
        delay_ms(50); // Curto atraso para debouncing, ainda em um callback, mas menos crítico que uma ISR completa.
                      // Idealmente, isto seria feito via timer assíncrono.
        newG = PORTG; // Thats important, so we can update the snapshot

        if ((newG & 0x3C0) != (oldG & 0x3C0)) { // Confirma a mudança após o debouncing
            LATASET = 0x1F; // Lets reset them to 1, therefore we can scan
            unsigned int scan_position = 0x00000001;
            unsigned int detected_row = 0;
            unsigned int detected_column = 0;
            unsigned int temp = 0;
            char key = '\0';

            for (unsigned int row = 0; row < 5; row++){ // we need to test all five possibiities
                LATA = (LATA & ~0x1F) | (0x1F & ~scan_position); // scan all bits
                delay_ms(1);
                temp = (~newG & 0x000003C0) >> 6; //bitmask 0000_0000_0000_0000_0000_0011_1100_0000. Remember: Those registers are pull-up!
                if (temp){
                    detected_column = 0;
                    while (temp >>= 1){
                        detected_column ++;
                    }
                    detected_row = row;
                    key = Key(detected_row, detected_column);
                    if (key == '\0') {
                        key = '\0';
                    }

                    (void)key; // Suprime o aviso, mas é melhor ter um uso real!

                    break;
                }
                scan_position <<= 1;
            }
        }
    }
    oldG = newG;
    IFS1CLR = _IFS1_CNIF_MASK; //Clears the flag
    // IEC1SET = _IEC1_CNIE_MASK; //enables the interruption again // Geralmente gerenciado pelo Harmony
}


const char Key(unsigned int row, unsigned int column){
    const char KeyMatrix[5][4] = {
        {'A','B','#','*'},
        {'1','2','3','U'},
        {'4','5','6','D'},
        {'7','8','9','Q'},
        {'<','0','>','E'}
    };
    return KeyMatrix[row][column];
}