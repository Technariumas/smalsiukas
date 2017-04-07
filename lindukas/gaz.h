#ifndef __GAZ_H
#define __GAZ_H
#include "pins.h"

#define GAZ_MIN 20
#define GAZ_TRIG_LOW 85
#define GAZ_CENTER 110
#define GAZ_TRIG_HIGH 129
#define GAZ_MAX = 160

#define GAZ_DELAY = 200

	
void gasEnable() {
}

void gasDisable() {
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