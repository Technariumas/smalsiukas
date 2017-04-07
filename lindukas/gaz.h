#ifndef __GAZ_H
#define __GAZ_H
#include "pins.h"

#define GAZ_MIN 20
#define GAZ_TRIG_LOW 85
#define GAZ_CENTER 110
#define GAZ_TRIG_HIGH 129
#define GAZ_MAX 160
#define GAZ_DELTA 20

#define GAZ_DELAY = 200

void gazInit() {
	myservo.write(GAZ_CENTER);
	delay(GAZ_DELAY);
	myservo.write(GAZ_TRIG_HIGH);
	gazOn();
}

//void gasEnable() {
//	myservo.write(GAZ_TRIG_HIGH);
//	gazOn();
//}

void gasDisable() {
	myservo.write(GAZ_TRIG_HIGH);
	delay(GAZ_DELAY);
	myservo.write(GAZ_CENTER);
}

typedef enum {
	SPEED0,
	SPEED1,
	SPEED2,
	SPEED3
} Speed_t;

Speed_t _cSpeed;

void setSpeed(Speed_t speed){
switch speed {
	case SPEED0:
		myservo.write(GAZ_TRIG_HIGH);
		break;
	case SPEED1:
		myservo.write(GAZ_TRIG_HIGH+GAZ_DELTA);
		break;
	case SPEED2:
		myservo.write(GAZ_TRIG_HIGH+GAZ_DELTA+GAZ_DELTA);
		break;
	case SPEED3:
		myservo.write(GAZ_TRIG_HIGH+GAZ_DELTA+GAZ_DELTA+GAZ_DELTA);
		break;
	case default:
		myservo.write(GAZ_TRIG_HIGH);
		break;
	}
}


#endif