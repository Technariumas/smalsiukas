#ifndef __GAZ_PWM_H
#define __GAZ_PWM_H

#include "lindukas.h"


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
void lindeThrottleTo(uint8_t);
void lindeThrottleToPosition(void);

/*
90° prie 68

75/90 * 1024
*/
//#define STEPS_PER_DEGREE 773


#define GAZ_DELTA 18
//#define GAZ_DELTA 20
#define GAZ_DELAY 200

//uint16_t backlash = 175;
//uint8_t noFeedback = 0;
//uint16_t nextPosition = 0;
//uint8_t nextPositionScheduled = 0;


#define GAZ_CENTER 120
#define GAZ_TRIG_HIGH GAZ_CENTER + 16



//#define STEERING_PIN_GREY_OFFSET (118 - 128)
//#define STEERING_PIN_YELLOW_OFFSET (138 - 128)

#define GAZ_MAX 160
//#define STEERING_PIN_YELLOW_MAX_VALUE (200 + STEERING_PIN_YELLOW_OFFSET)
//#define STEERING_PIN_GREY_MAX_VALUE (200 + STEERING_PIN_GREY_OFFSET)

#define GAZ_MIN 20
//#define STEERING_PIN_YELLOW_MIN_VALUE (20 - STEERING_PIN_YELLOW_OFFSET)
//#define STEERING_PIN_GREY_MIN_VALUE (20 - STEERING_PIN_GREY_OFFSET)

#define SWITCH_PERIOD_MS 15

typedef enum{
  Direction_UP,
  Direction_DOWN
  } thrDirection_t;

thrDirection_t thrDirection = Direction_UP;


//uint8_t center = GAZ_CENTER;
uint8_t throttleCurPos = GAZ_CENTER;

uint8_t isThrottle = 0;
uint8_t throttleSetPos = GAZ_CENTER;

uint32_t lastTthrottleTs = 0;



void gazInit() {
  lindeThrottleTo(GAZ_TRIG_HIGH);
  delay(GAZ_DELAY);
  gazOn();
}

void gasEnable() {
  lindeThrottleTo(GAZ_TRIG_HIGH);
  gazOn();
}

void gazDisable() {
  lindeThrottleTo(GAZ_TRIG_HIGH);
  delay(GAZ_DELAY);
  gazOff();
  lindeThrottleTo(GAZ_CENTER);
}

void setSpeed(Speed_t speed){
switch (speed) {
  case SPEED0:
    lindeThrottleTo(GAZ_TRIG_HIGH);
    break;
  case SPEED1:
    lindeThrottleTo(GAZ_TRIG_HIGH+GAZ_DELTA);
    break;
  case SPEED2:
    lindeThrottleTo(GAZ_TRIG_HIGH+GAZ_DELTA+GAZ_DELTA);
    break;
  case SPEED3:
    lindeThrottleTo(GAZ_TRIG_HIGH+GAZ_DELTA+GAZ_DELTA+GAZ_DELTA);
    break;
  default:
    lindeThrottleTo(GAZ_TRIG_HIGH);
    break;
  }
}


uint8_t isTimeToAlterThrottle() {
  return millis() - lastTthrottleTs >= SWITCH_PERIOD_MS; 
}


void lindeThrottleTo(uint8_t throttleTargetPosition) {
    if(throttleTargetPosition > GAZ_MAX) {
      throttleTargetPosition = GAZ_MAX;
    }
    
    if(throttleTargetPosition < GAZ_MIN) {
      throttleTargetPosition = GAZ_MIN;
    }

    if(throttleTargetPosition > throttleCurPos) {
      Serial.println("UP");
      thrDirection = Direction_UP;
      throttleSetPos = throttleTargetPosition;
      isThrottle = 1;
    } else if(throttleTargetPosition < throttleCurPos) {
      Serial.println("DOWN");
      thrDirection = Direction_DOWN;
      throttleSetPos = throttleTargetPosition;
      isThrottle = 1;    
    } else {
      isThrottle = 0;
    }
    Serial.print(throttleCurPos);
    Serial.print("go to: ");
    Serial.println(throttleSetPos);
    lindeThrottleToPosition();
}



//uint8_t steeringIsMoveDone() {
//  return !isTurning;
//}

void throttleRun() {
  if(isThrottle && isTimeToAlterThrottle()){
    if(Direction_UP == thrDirection) {
      if(throttleCurPos + 1 <= throttleSetPos) {
        throttleCurPos++;
        analogWrite(GAZ_PWM_PIN, throttleCurPos);
         Serial.print(throttleCurPos);
        Serial.print(" -> ");
         Serial.println(throttleSetPos);
      } else {
        isThrottle = 0;
      }
    } else {
      if(throttleCurPos - 1 >= throttleSetPos) {
        throttleCurPos--;
        analogWrite(GAZ_PWM_PIN, throttleCurPos);
        Serial.print(throttleCurPos);
        Serial.print(" <- ");
         Serial.println(throttleSetPos);
      } else {
        isThrottle = 0;        
      }
    }
    lastTthrottleTs = millis();
  }
}

void lindeThrottleToPosition() {
	while(isThrottle) {
		throttleRun();
	}
}
#endif
