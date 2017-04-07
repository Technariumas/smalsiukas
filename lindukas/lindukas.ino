#include "pins.h"
#include "Servo.h"
#include "lindukas.h"
#include "steering.h"
#include "line_follower.h"
#include "Bounce2.h"
#include "control.h"


Bounce button = Bounce();


#include "gaz.h"

void setup() {
	Serial.begin(115200);
	pinsInit();
	speedServo.attach(SERVO_PIN); 
	
	// center gaz pot
	gazDisable();
	 
	//button.attach(GAZ_SPEED3);
	button.interval(100);

	steeringInit();
	steeringDisable();
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
	
			break;
		case STATE_ERROR:
			break;
	}
}

void loop() {
	if(isLineAvailable()) {
		uint8_t l = getLine();
		Serial.println(l, BIN);
		delay(500);
	}
}

void loop2() {
	followTheLine();

	steeringRun();
	button.update();
}
