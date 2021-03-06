#ifndef __GAZ_H
#define __GAZ_H
#include "lindukas.h"
//#include "pins.h"
//#include "control.h"

#define GAZ_MIN 20
#define GAZ_TRIG_LOW 85
#define GAZ_CENTER 93
#define GAZ_TRIG_HIGH GAZ_CENTER + 21 
#define GAZ_MAX 160
#define GAZ_DELTA 10 

#define GAZ_DELAY 200

Servo speedServo;


typedef enum {
  SPEED0,
  SPEED1,
  SPEED2,
  SPEED3
} Speed_t;

Speed_t _cSpeed;


void gazDisable(void);
void gazInit(void);
void gazDisable(void);
void setSpeed(Speed_t);

void gazInit() {
	speedServo.write(GAZ_TRIG_HIGH);
	delay(GAZ_DELAY);
	gazOn();
}

void gasEnable() {
	speedServo.write(GAZ_TRIG_HIGH);
	gazOn();
}

void gazDisable() {
	speedServo.write(GAZ_TRIG_HIGH);
	delay(GAZ_DELAY);
	gazOff();
	speedServo.write(GAZ_CENTER);
}


void setSpeed(Speed_t speed){
switch (speed) {
	case SPEED0:
		speedServo.write(GAZ_TRIG_HIGH);
		break;
	case SPEED1:
		speedServo.write(GAZ_TRIG_HIGH+GAZ_DELTA);
		break;
	case SPEED2:
		speedServo.write(GAZ_TRIG_HIGH+GAZ_DELTA+GAZ_DELTA);
		break;
	case SPEED3:
		speedServo.write(GAZ_TRIG_HIGH+GAZ_DELTA+GAZ_DELTA+GAZ_DELTA);
		break;
	default:
		speedServo.write(GAZ_TRIG_HIGH);
		break;
	}
}


#endif
