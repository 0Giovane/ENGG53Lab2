#include <string.h>
#include <stdint.h>
#include "utils.hpp"

void delayUs(uint16_t us)
{
    // 16 NOPs per us to 16 MHz
    for (volatile uint16_t i = 0; i < (us * 16); ++i)
    {
        __asm__ volatile("nop");
    }
}

void delayMs(uint16_t ms)
{
    while (ms--)
    {
        delayUs(1000);
    }
}


