/*
 * led.h
 *
 *  Created on: 28-Nov-2018
 *      Author: ankit
 */

#ifndef INC_LED_H_
#define INC_LED_H_

#define LED_PORT 17
#define LED_REG 10
#define LED_PIN 5

void delay(__IO uint32_t time);
__IO uint32_t tdelay;

void LED_Init(void);
void blink(void);

#endif /* INC_LED_H_ */
