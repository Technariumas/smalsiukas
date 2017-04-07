#ifndef __GAZ_H
#define __GAZ_H
#include "pins.h"

void gasEnable() {
	digitalWrite(GAZ_ENABLE, HIGH);
}

void gasDisable() {
	digitalWrite(GAZ_ENABLE, LOW);
}

typedef enum {
	SPEED0,
	SPEED1,
	SPEED2,
	SPEED3
} Speed_t;


void setSpeed(Speed_t speed){
}


#endif