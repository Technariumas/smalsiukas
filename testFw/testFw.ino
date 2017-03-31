#include "pins.h"
#include "control.h"
#include "brake.h"
#include "line_follower.h"
#include "steering.h"

void setup() {
	pinsInit();
	controlAllOff();
	Serial.begin(115200);
	steeringInit();
}

void testAllOutputs() {
	magnetEngage();
	delay(500);
	magnetDisengage();
	delay(500);
	setSpeed(SPEED1);
	delay(500);
	setSpeed(SPEED0);
	delay(500);
	gasEnable();
	delay(500);
	gasDisable();
	delay(500);
	keyOn();
	delay(500);
	keyOff();
	delay(500);
	auxOn();
	delay(500);
	auxOff();
	delay(500);
	mirgalkeOn();
	delay(500);
	mirgalkeOff();
	delay(500);
	lightsOn();
	delay(500);
	lightsOff();
	delay(500);
	seatEnable();
	delay(500);
	seatDisable();
	delay(500);
	parkingOff();
	delay(500);
	parkingOn();

	delay(500);
	hornOn();
	delay(500);
	hornOff();
	delay(500);
	directionBackwardOn();
	delay(500);
	directionForwardOn();
	delay(500);
	directionOff();


	delay(1000);

	controlTakeover();
	delay(5000);
	controlRelease();
}

void testSpeeds() {
	setSpeed(SPEED1);
	delay(500);
	setSpeed(SPEED0);
	delay(500);
}

uint32_t lastReq = 0;

void serialTestOld() {
	while(Serial.available()) {
		char t = Serial.read();
		if(0!=t) Serial.println((char) t, HEX);
	}
	if(millis() - lastReq > 1) {
		digitalWrite(RS458_DE_RD, HIGH);
		Serial.write('?');
		while(!(UCSR0A & _BV(TXC0))) {
			//WAIT
		}
//		PORTD &= ~_BV(PD2);
		digitalWrite(RS458_DE_RD, LOW);
		lastReq = millis();
	} else {
		// if(UCSR0A & _BV(TXC0)) {
		// 	digitalWrite(RS458_DE_RD, LOW);
		// }
	}
}

void serialTest() {
	if(isTimeToSteer()){
		if(isLineAvailable()) {
			uint8_t l = getLine();
			if(0 != l) {
				Serial.println();
				Serial.println(l);
				delay(100);
			}
		} else if(isRequestTimeout()){
			Serial.print('T');
			delay(100);
		} else if(isChecksumError()){
			Serial.println('!');
			delay(100);
		}
	}
}

int angle = 900;

void loop() {
	if(steeringIsMoveDone()) {
		steeringSetAngle(angle);
		angle = -angle;
	}
//	testAllOutputs();
//  serialTest();
//	delay(1000);
	steeringRun();
}