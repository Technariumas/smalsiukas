#include "pins.h"
#include "smalsiukas.h"
#include "steering.h"
#include "line_follower.h"
#include "Bounce2.h"

Bounce button = Bounce();
Bounce rangefinder = Bounce();
Bounce obstacle = Bounce();

void setup() {
	Serial.begin(115200);
	pinsInit();
	button.attach(GAZ_SPEED3);
	button.interval(100);
	rangefinder.attach(RANGEFINDER_WARNING);
	rangefinder.interval(50);
	obstacle.attach(RANGEFINDER_WARNING);
	obstacle.interval(500);

	steeringInit();
	steeringDisable();
	brakeEmergencyEngage();
}

uint8_t isObstacleInRange() {
	return rangefinder.rose();
}

//koeficientas, kiek pasukti ratus esant kokiam nuokrypiui
#define P 100
uint8_t nonCriticalSteerings = 0;
uint8_t steerings = 0;
uint32_t lineLastSeenTs = 0;

void followTheLine() {
	switch (smalsiukasState) {
		case STATE_STOP:
			if(button.fell()) {
				go();
				smalsiukasState = STATE_FOLLOWING;
				beep();
			}
			break;
		case STATE_FOLLOWING:
			if(isTimeToSteer()){
				if(isLineAvailable()) {
					uint8_t l = getLine();
					if(isLineDetected(l)) {
						lineLastSeenTs = millis();
						if(l != lastLine) {
							lastLine = l;
							steerings ++;

							if(firstSteering && !steeringIsMoveDone()) {
								steeringRunToPosition();
								firstSteering = 0;
							}
			
							if(isLineCritical(l)) {
								nonCriticalSteerings = 0;
								setSpeed(SPEED0);
							} else {
								setSpeed(SPEED1);
								nonCriticalSteerings++;
								if(nonCriticalSteerings > 0 && steerings > 35) {
									stop();
									delay(500);
									go();
									steerings = 0;
									nonCriticalSteerings = 0;
									lastLine = 0;
									firstSteering = 1;
									lineLastSeenTs = millis();
								}
							}
							int16_t steer = getErrorAngle(line) * -1 * P;
//							Serial.println(steer);
							steeringSetAngle(steer);
						}
						mirgalkeOff();
					} else {
						if(0 == l && millis() - lineLastSeenTs > LINE_SEEN_TIMEOUT) {
							parkingOn();
							beeep();
							delay(500);
							beeep();
							stop();
							smalsiukasState = STATE_STOP;
						}
					}
				} else if(isRequestTimeout()){
					Serial.print('T');
					delay(100);
				} else if(isChecksumError()){
					Serial.println('!');
					delay(100);
				} else {
					mirgalkeOn();
				}
			}

			if(button.fell()) {
				stop();
				smalsiukasState = STATE_STOP;
			}			
	
			if(obstacle.rose()) {
				parkingOn();
				lightsOn();
				auxOn();
				beeep();
				delay(2000);
				stop();
				while(1 == obstacle.read()) {
					obstacle.update();
				}
				lightsOff();
				auxOff();
				go();
			}
			
			break;
		case STATE_ERROR:
			break;
	}
}


void loop() {
	followTheLine();
	if(isObstacleInRange()) {
		beep();
	}

	steeringRun();
	rangefinder.update();
	button.update();
	obstacle.update();
}