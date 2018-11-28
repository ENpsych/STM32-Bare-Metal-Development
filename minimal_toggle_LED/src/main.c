/*
 * main.c
 *
 *  Created on: 28-Nov-2018
 *      Author: ankit
 */

#include "stm32f3xx.h"
#include "led.h"

int main(void)
{
	/*Systick Configuration, This is a hardware timer which is used for delay*/
	SysTick_Config((SystemCoreClock/1000)-1);

	/*Initialize LED*/
	LED_Init();

	while(1)
	{
		/*Blink LED*/
		blink();
	}
}


