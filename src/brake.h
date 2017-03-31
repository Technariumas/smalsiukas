#ifndef __BRAKE_H
#define __BRAKE_H

#include "pins.h"

typedef enum {
	DIRECTION_OUT,
	DIRECTION_IN
} Direction_t;

typedef enum {
	ERROR_NONE,
	ERROR_UNABLE_TO_START,
	ERROR_UNABLE_TO_STOP
} Error_t;

#define START_TIMEOUT 1000;
#define ACTUATION_TIMEOUT 5000;
#define MIN_MOVING_CURRENT 10;

Error_t error = ERROR_NONE;
uint16_t currentLsb = 0;
uint32_t moveStartTimestamp = 0;

uint8_t isEmergencyBrakeProblem() {
	return ERROR_NONE != error; 
}

void setDirection(Direction_t direction) {
	if(DIRECTION_OUT == direction) {
		digitalWrite(LINEAR_ACTUATOR_DIRECTION, HIGH);
	} else if(DIRECTION_IN == direction) {
		digitalWrite(LINEAR_ACTUATOR_DIRECTION, LOW);
	}
}

void magnetEngage() {
	digitalWrite(MAGNET_ENGAGE, HIGH);
}

void magnetDisengage() {
	digitalWrite(MAGNET_ENGAGE, LOW);
}

void actuatorEnable() {
	digitalWrite(LINEAR_ACTUATOR_ENABLE, HIGH);
	moveStartTimestamp = millis();
}

void actuatorDisable() {
	digitalWrite(LINEAR_ACTUATOR_ENABLE, LOW);
}

uint8_t isMoving() {
	return currentLsb > MIN_MOVING_CURRENT;
}

uint8_t isStartTimeout() {
	return (millis() - moveStartTimestamp) > START_TIMEOUT;
}

uint8_t isActivationTimeout() {
	return (millis() - moveStartTimestamp) > ACTUATION_TIMEOUT;
}

void monitorCurrent() {
	currentLsb = analogRead(HBRIDGE_CURRENT_ANALOG);
}

void clearError() {
	error = ERROR_NONE;
}

void setError(Error_t e) {
	error = e;
}

void actuate(Direction_t direction) {
	setDirection(direction);
	actuatorEnable();
	
	while(!isMoving() && !isStartTimeout()) {
		monitorCurrent();
	}

	if(isStartTimeout()) {
		setError(ERROR_UNABLE_TO_START);
	}
	
	while(!isEmergencyBrakeProblem() && isMoving() && !isActivationTimeout()) {
		monitorCurrent();
	}

	if(isActivationTimeout()) {
		setError(ERROR_UNABLE_TO_STOP);
	}	

	actuatorDisable();
}


void brakeEmergencyRelease() {
	clearError();
	magnetDisengage();

	actuate(DIRECTION_IN);
	//įsitikinam, kad aktuatorius yra sutrauktas, todėl ignoruojam klaidas
	if(ERROR_UNABLE_TO_START == error) {
		clearError();  
	}

	actuate(DIRECTION_OUT);

	if(!isEmergencyBrakeProblem()) {
		magnetEngage();
		actuate(DIRECTION_IN);
	}
}

#endif