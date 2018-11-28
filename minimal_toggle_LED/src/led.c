/*
 * led.c
 *
 *  Created on: 28-Nov-2018
 *      Author: ankit
 */


#include "stm32f3xx.h"
#include "delay.h"

#define LED_PORT 17
#define LED_REG 10
#define LED_PIN 5

void delay(__IO uint32_t time);


void LED_Init(void)
{
		/*Enable GPIOA clock*/
		RCC->AHBENR |= (1 << LED_PORT);

		/*Set GPIOA pin 5 as OUTPUT*/
		GPIOA->MODER |= (0x01 << LED_REG);
}

void blink(void)
{
	GPIOA->ODR &= ~(1 << LED_PIN);
	delay(1000);
	GPIOA->ODR |= (1 << LED_PIN);
	delay(1000);
}
