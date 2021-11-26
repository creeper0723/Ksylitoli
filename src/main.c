#include <stdint.h>
#include "CH552.h"

void delay(uint32_t delay_time)
{
    uint32_t i;
    for (i = 0; i < (12000ul) * delay_time; i++)
    {
        __asm__("nop");
    }
}

void main()
{
	P1_MOD_OC = 0;
	P1_DIR_PU = 0xFF;

	while(1)
	{
		P1 = 0;
		delay(10);
		P1 = 0xFF;
		delay(10);
	}
}
