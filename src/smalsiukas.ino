#include "pins.h"
#include "smalsiukas.h"
#include "steering.h"
#include "line_follower.h"


void setup() {
	pinsInit();
	startupSequence();
}

uint8_t line;

//koeficientas, kiek pasukti ratus esant kokiam nuokrypiui
#define P (1 * 1024)

void loop() {
	if(isTimeToSteer()) {
		if(isLineAvailable()) {
			line = getLine();
			error = getErrorAngle(line);
			if(0 == line) {
				//ERROR! nemato linijos!
			} else if(128 == error) {
				//ERROR! neatpažinta užnoizinta linija!
			} else {
				steeringSetAngle(-1 * (error * P >> 1024))
			}
		} else if(isRequestTimeout()) {
			//ERROR! neatsiliepia sensorius!!!
		}
	}
	steeringRun();
}