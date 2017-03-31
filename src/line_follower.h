#ifndef __LINE_FOLLOWER_H
#define __LINE_FOLLOWER_H

#include "pins.h"

uint8_t line;
uint32_t lastReadTS = 0;

#define LINE_READ_INTERVAL 2
#define READ_REQ_TIMEOUT 5

int16_t getErrorAngle(uint8_t line) {
	switch(line) {
		case 0b10000000:
			return -33;
		case 0b11000000:
			return -30;
		case 0b01000000:
			return -20;
		case 0b01100000:
			return -18;
		case 0b00100000:
			return -11;
		case 0b00110000:
			return -8;
		case 0b00010000:
			return -3;
		case 0b00011000:
			return 0;
		case 0b00001000:
			return 3;
		case 0b00001100:
			return 8;
		case 0b00000100:
			return 11;
		case 0b00000110:
			return 18;
		case 0b00000010:
			return 20;
		case 0b00000011:
			return 30;
		case 0b00000001:
			return 33;
	}
	return 128;
}

typedef enum {
	STATE_IDLE,
	STATE_REQUESTED,
	STATE_GOT1BYTE,
	STATE_AVAILABLE
} FollowerState_t;

FollowerState_t state = STATE_IDLE;

uint8_t isTimeToSteer() {
	return (millis() - lastReadTS) > LINE_READ_INTERVAL;
}

uint32_t reqTs = 0;
uint8_t isReqTimeout = 0;
uint8_t isChksumError = 0;

uint8_t isRequestTimeout() {
	return isReqTimeout;
}

uint8_t isChecksumError() {
	return isChksumError;
}

uint8_t line_tmp;
uint8_t checksum;

uint8_t isLineAvailable() {
//	Serial.print(state);
	switch(state) {
		case STATE_IDLE:
			while(Serial.available()) {
				Serial.read();
			}
			digitalWrite(RS458_DE_RD, HIGH);
			Serial.write('?');
			while(!(UCSR0A & _BV(TXC0))) {
				//WAIT
			}
			digitalWrite(RS458_DE_RD, LOW);
			state = STATE_REQUESTED;
			reqTs = millis();
			isReqTimeout = 0;
			isChksumError = 0;
			return 0;
		case STATE_REQUESTED:
			if(Serial.available()) {
				line_tmp = Serial.read();
				state = STATE_GOT1BYTE;
				reqTs = millis();
			} else if((millis() - reqTs) > READ_REQ_TIMEOUT){
				state = STATE_IDLE;
				isReqTimeout = 1;
			}
			return 0;
		case STATE_GOT1BYTE:
			if(Serial.available()) {
				checksum = Serial.read();
				uint8_t t = (~line_tmp + 1);
				if(t == checksum) {
					state = STATE_AVAILABLE;
					line = line_tmp;
					lastReadTS = millis();
				} else {
					state = STATE_IDLE;
					isChksumError = 1;
				}
			} else if((millis() - reqTs) > READ_REQ_TIMEOUT) {
				state = STATE_IDLE;
				isReqTimeout = 1;
			}
			return 0;
		case STATE_AVAILABLE:
			state = STATE_IDLE;
			return 1;
	}
}

uint8_t getLine() {
	return line;
}
#endif