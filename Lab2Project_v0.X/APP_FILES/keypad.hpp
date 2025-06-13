/* 
 * File:   keypad.hpp
 * Author: Bianca
 *
 * Created on 12 de Junho de 2025, 19:18
 */

#ifndef KEYPAD_HPP
#define	KEYPAD_HPP

#include "definitions.h"
#include <stdint.h>
#include <stdbool.h>
#include <string.h>

#define ROWS 5
#define COLS 4

class Keypad
{
public:
    Keypad();
    void init();
    char getKey();
    bool isKeyPressed();
    
private:
    const char m_keymap[ROWS][COLS] = {
        {'A','B','#','*'},
        {'1','2','3','U'},
        {'4','5','6','D'},
        {'7','8','9','Q'},
        {'<','0','>','E'}
    };
    
    char m_last_key;
    void resetLines();
    void scan();
    static void cnCallback(CN_PIN cn_pin, uintptr_t context);
    void registerCallback();
};

#endif	/* KEYPAD_HPP */

