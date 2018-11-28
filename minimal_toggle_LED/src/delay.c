/*
 * delay.c
 *
 *  Created on: 28-Nov-2018
 *      Author: ankit
 */

#include "stm32f3xx.h"

void delay(__IO uint32_t time);
extern __IO uint32_t tdelay;

void delay(__IO uint32_t time)
{
	tdelay=time;
	while(tdelay !=0 );
}

void SysTick_Handler(void)
{
	if(tdelay !=0 )
	{
		tdelay--;
	}
}
