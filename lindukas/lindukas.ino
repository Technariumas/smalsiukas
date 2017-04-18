
#define USE_GAZ_PWM 1

#include "pins.h"

#ifndef USE_GAZ_PWM
#include "Servo.h"
#endif

#include "lindukas.h"
#include "steering.h"
#include "line_follower.h"
#include "Bounce2.h"
#include "control.h"


Bounce button = Bounce();


//#include "gaz.h"
uint32_t lineLastSeenTs = 0;

void setup() {
  sendControl();

  Serial.begin(115200);
  Serial.println("Hello");

  control = control | LED_STAGE_1;
  sendControl();

  pinsInit();
#ifdef __GAZ_H
  speedServo.attach(SERVO_PIN);
#endif

  // center gaz pot
  gazDisable();


  button.attach(BUTTON_START);
  button.interval(100);

  steeringInit();
  controlTakeover();


  // show 2 LEDs
  control = control | LED_STAGE_1 | LED_STAGE_2 | LED_STAGE_3 | LED_STAGE_4;
  sendControl();
  
  delay(6000);

// wait for button

  while (!button.fell()) {
    control = control & ~LED_STAGE_3;
    sendControl();
    delay(100);
    control = control | LED_STAGE_3;
    sendControl();
    delay(100);
    button.update();
  }
    // all LEDs off...
    control = control & ~LED_STAGE_1 & ~LED_STAGE_2 & ~LED_STAGE_3 & ~LED_STAGE_4;
    sendControl();
    gazInit();
    smalsiukasState = STATE_FOLLOWING;
    delay(200);
    beep();
    
    go();
    button.update();
    lineLastSeenTs = millis();
    
}

//koeficientas, kiek pasukti ratus esant kokiam nuokrypiui
#define P 4
uint8_t nonCriticalSteerings = 0;
uint8_t steerings = 0;

void followTheLine() {
  switch (smalsiukasState) {
    case STATE_STOP:
      if (button.fell()) {
        go();
        smalsiukasState = STATE_FOLLOWING;
        beep();
        lineLastSeenTs = millis();
      }
      break;
    case STATE_FOLLOWING:
      if (isTimeToSteer()) {
        if (isLineAvailable()) {
          uint8_t l = getLine();
          if (isLineDetected(l)) {
            lineLastSeenTs = millis();
            if (l != lastLine) {
              lastLine = l;
              steerings ++;

              if (firstSteering && !steeringIsMoveDone()) {
                steeringRunToPosition();
                firstSteering = 0;
              }

              if (isLineCritical(l)) {
                nonCriticalSteerings = 0;
                setSpeed(SPEED1);
              } else {
                setSpeed(SPEED2);
                nonCriticalSteerings++;
                // if(nonCriticalSteerings > 0 && steerings > 35) {
                // 	stop();
                // 	delay(500);
                // 	go();
                // 	steerings = 0;
                // 	nonCriticalSteerings = 0;
                // 	lastLine = 0;
                // 	firstSteering = 1;
                // 	lineLastSeenTs = millis();
                // }
              }
              int16_t steer = getErrorAngle(line) * P;
              //							Serial.println(steer);
              steeringSetAngle(steer);
              steeringRunToPosition();
            }
            mirgalkeOff();
          } else {
          }
        } else if (isRequestTimeout()) {
          Serial.print('T');
          delay(100);
        } else if (isChecksumError()) {
          Serial.println('!');
          delay(100);
        } else {
          mirgalkeOn();
        }
      }

      if (button.fell()) {
        stop();
        smalsiukasState = STATE_STOP;
      }

		if (millis() - lineLastSeenTs > LINE_SEEN_TIMEOUT) {
		  parkingOn();
		  beeep();
		  delay(500);
		  beeep();
		  stop();
		  smalsiukasState = STATE_STOP;
		}

      break;
    case STATE_ERROR:
      break;
  }
}

int8_t turnTo = 90;

void loop() {
  followTheLine();

  steeringRun();
  button.update();
}
