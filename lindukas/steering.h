#ifndef __STEERING_H
#define __STEERING_H

#include "pins.h"

/*
90° prie 68

68/90 * 1024
*/
#define STEPS_PER_DEGREE 774


uint16_t backlash = 175;
uint8_t noFeedback = 0;
uint16_t nextPosition = 0;
uint8_t nextPositionScheduled = 0;



#define STEERING_PIN_GREY_OFFSET (118 - 128)
#define STEERING_PIN_YELLOW_OFFSET (138 - 128)

#define STEERING_PIN_YELLOW_MAX_VALUE (200 + STEERING_PIN_YELLOW_OFFSET)
#define STEERING_PIN_GREY_MAX_VALUE (200 + STEERING_PIN_GREY_OFFSET)

#define STEERING_PIN_YELLOW_MIN_VALUE (20 - STEERING_PIN_YELLOW_OFFSET)
#define STEERING_PIN_GREY_MIN_VALUE (20 - STEERING_PIN_GREY_OFFSET)

#define TURN_PERIOD_MS 10

typedef enum{
  Direction_CW,
  Direction_CCW
  } Direction_t;

Direction_t direction = Direction_CW;

//STEERING_PIN_GREY STEERING_PIN_YELLOW
uint8_t center[] = {128 + STEERING_PIN_GREY_OFFSET, 128 + STEERING_PIN_YELLOW_OFFSET};
uint8_t curPos = 128;

uint8_t isTurning = 0;
uint8_t setPos = 128;

uint32_t lastTurnTs = 0;

uint8_t isTimeToTurnTheWheel() {
  return millis() - lastTurnTs >= TURN_PERIOD_MS; 
}


void lindeSteerTo(uint16_t targetPosition) {
    if(targetPosition > STEERING_PIN_GREY_MAX_VALUE) {
      targetPosition = STEERING_PIN_GREY_MAX_VALUE;
    }
    
    if(targetPosition > STEERING_PIN_YELLOW_MAX_VALUE) {
      targetPosition = STEERING_PIN_YELLOW_MAX_VALUE;
    }

    if(targetPosition < STEERING_PIN_GREY_MIN_VALUE) {
      targetPosition = STEERING_PIN_GREY_MIN_VALUE;
    }
    
    if(targetPosition < STEERING_PIN_YELLOW_MIN_VALUE) {
      targetPosition = STEERING_PIN_YELLOW_MIN_VALUE;
    }

    
    if(targetPosition > curPos) {
      Serial.println("CW");
      direction = Direction_CW;
      setPos = targetPosition;
      isTurning = 1;
    } else if(targetPosition < curPos) {
      Serial.println("CCW");
      direction = Direction_CCW;
      setPos = targetPosition;
      isTurning = 1;    
    } else {
      isTurning = 0;
    }
    Serial.print("go to: ");
    Serial.println(setPos);
    
}

void steeringToCenter() {
  analogWrite(STEERING_PIN_GREY, center[0]);
  analogWrite(STEERING_PIN_YELLOW, center[1]);
}

void steeringInit() {
	steeringToCenter();
	delay(1);//kad PWM dac turetu laiko nusistoveti
}

/**
 * angle - degress/10 i.e. 90 degrees = 900
 */

int16_t degreesToPosition(int16_t angle) {
	return (int16_t)128 + (((uint32_t)angle * STEPS_PER_DEGREE) / 1024);
}

void steeringSetAngle(int16_t angle) {
	lindeSteerTo(degreesToPosition(angle));
}

uint8_t steeringIsMoveDone() {
  return !isTurning;
}

void steeringRun() {
  if(isTurning && isTimeToTurnTheWheel()){
    if(Direction_CW == direction) {
      if(curPos + 1 <= setPos) {
        curPos++;
        analogWrite(STEERING_PIN_GREY, curPos + STEERING_PIN_GREY_OFFSET);
        analogWrite(STEERING_PIN_YELLOW, curPos + STEERING_PIN_YELLOW_OFFSET);
        Serial.print(curPos + STEERING_PIN_GREY_OFFSET);
        Serial.print(" ");
        Serial.println(curPos + STEERING_PIN_YELLOW_OFFSET);
      } else {
        isTurning = 0;
      }
    } else {
      if(curPos - 1 >= setPos) {
        curPos--;
        analogWrite(STEERING_PIN_GREY, curPos + STEERING_PIN_GREY_OFFSET);
        analogWrite(STEERING_PIN_YELLOW, curPos + STEERING_PIN_YELLOW_OFFSET);
        Serial.print(curPos + STEERING_PIN_GREY_OFFSET);
        Serial.print(" ");
        Serial.println(curPos + STEERING_PIN_YELLOW_OFFSET);
      } else {
        isTurning = 0;        
      }
    }
    lastTurnTs = millis();
  }
}

void steeringRunToPosition() {
	while(!steeringIsMoveDone()) {
		steeringRun();
	}
}
#endif