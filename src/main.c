#include "definitions.h"
#include <stdint.h>

void delay_1s(void)
{
    volatile uint32_t i;
    for (i = 0; i < 10000000; i++) {
        // Delay artificial
    }
}

int main(void)
{
    SYS_Initialize(NULL);

    while (1)
    {
       GPIO_PinToggle(GPIO_PIN_RE9);
       delay_1s();
    }

    return (EXIT_FAILURE);
}