
#include <EEPROM.h>

#define __VERSION "0.1a"
#define _Baudrate 115200

struct Device {
  unsigned long tMaxSeeking; // max line seeking time in usecs
  unsigned long tMaxSteering1; // max steering time in usecs in turning mode
  unsigned long tMaxSteering2; // max steering time in usecs in straight mode
  uint8_t SteeringUnit; // steering unit value as unit8
};

struct LineState {
  unsigned short raw; // raw value
  unsigned short Left; // left side of sensor, BCD
  unsigned short Right; // right side of sensor, BCD
  bool Straight; // straight on the line, both sensors read the same values
  bool offLine; // off-the-line, both sensors readd 0x00;
  };

Device device;
LineState lineState;

unsigned short turnFactor[] = {0, 0, 1, 1, 2, 3, 4, 5}; // turn factor index, zero-based

// command inteface
#include <SerialCommand.h>
SerialCommand sCmd;     // The SerialCommand object



//use Linde interface
#define LINDE 1

#include "linde.h"
#include "SteeringPot.h"
#include "ctrl_Linde.h"

#include "LineSensor.h"

// init steering and car
#ifdef LINDE
SteeringPot steeringWheel(SteeringPin);
CtrlLinde Car;
#endif

uint8_t cLinePosition;
unsigned long tMoving; // time spent on moving
unsigned long tSeeking; // time spent on line seeking
unsigned long tSteering1; // time spent on steering in turning phase
unsigned long tSteering2; // time spent on steering in straight phase

uint8_t pLinePosition; // previuos line position

uint8_t cDirection; // current car direction




// set up line follower interface
LineSensor lineSensing(10); // WUT ?


// AUX functions

// prepare / stop forklift for movement operations
void Move(bool state) {
  Car.Throttle(0);
  Car.setDirection(0);
  Car.Beacon(0);
  //Car::MasterKey(0);
  if (state) {
    Car.MasterKey(1);
    Car.Beacon(1);
    Car.setDirection(1); // move forward
    Car.Throttle(1);
    Car.Speed(0);
  }
}

void beep(unsigned short times) {
  for (short i = 0; i < times; i++) {
    Car.Horn(1);
    delay(150);
    Car.Horn(0);
    delay(500);
  }
}



void setup() {

#ifdef DEBUG
  // start serial port
  Serial.begin(_Baudrate);
  delay(300);
  #endif


  // set up car
  Car.Beacon(1);
  Car.Lights(1);
  beep(3);
  //Car.Seat(1);
}

// convert binary to positional code
uint8_t bin2pos(uint8_t value) {
  switch (value) {
    case 0x0:
      return 0;
      break;
    case 0x1:
      return 1;
      break;
    case 0x3:
      return 2;
      break;
    case 0x2:
      return 3;
      break;
    case 0x6:
      return 4;
      break;
    case 0x4:
      return 5;
      return;
    case 0xC:
      return 6;
      break;
    case 0x8:
      return 7;
      break;
  }
  }

// arbitrate line position on the sensor
void lineArbitrate(uint8_t cPosition, LineState *LS ){
  LS->raw = cPosition;
  LS->Left = bin2pos(cPosition >> 4); // left sensors are 4 bits on MSB side. Convert binary to positional code
  LS->Right = 0;
  uint8_t tmp = cPosition & 0xF; // right sensors are 4 bits on LSB side
  for (uint8_t i=0; i<4; i++){ // reverse bit order
    if (bitRead(tmp, 4-i)){
      bitSet(LS->Right, i); 
      }
     }
  LS->Right = bin2pos(LS->Right); // convert binary to positional code
  LS->Straight = 0;
  LS->offLine = 1;
  if ((LS->Right !=0) && (LS->Left != 0)) {
     LS->offLine = 0;
    if (LS->Right == LS->Left) {
      LS->Straight = 1;
      }
    }
  
 }

 short turnAngle(LineState *LS) {
  // set positive value for turning left and negative for turning right
  uint8_t cPosition = max(abs(LS->Left), abs(LS->Right));
  short cAngle = turnFactor[cPosition] * device.SteeringUnit;
  if (abs(LS->Right) > LS->Left) {
    cAngle = 0 - cAngle;
    }
    return cAngle;
  }
  

void loop() {
  // put your main code here, to run repeatedly:
  if (Car.canMove) {
    cLinePosition = lineSensing.get();
    lineArbitrate(cLinePosition, &lineState);
    Serial.print(F("[LOOP]: line readings\n\tRAW:\t["));
    Serial.print(lineState.raw);
    Serial.println(F("]"));
    Serial.print(F("\tStraight:\t"));
    Serial.print(lineState.Straight);
    Serial.print(F("\tLeft:\t["));
    Serial.print(lineState.Left);
    Serial.print(F("]"));
    Serial.print(F("\tRight:\t["));
    Serial.print(lineState.Right);
    Serial.println(F("]"));
    

    switch (Car.State) {
    case Smalsiukas::MOVING:
      if (!lineState.Straight && (lineState.Left && lineState.Right)) { // sensors on both sides are on line
          Car.Throttle(0);
          tSeeking = millis();
          cDirection = Car.getDirection();
          Car.setDirection(0-cDirection); //reverse direction, preserve angle
          Car.State = Smalsiukas::STOP;
          Serial.println("[MOVING]: end-of-line detected");
        }
        if (!lineState.Straight && (lineState.Left || lineState.Right)) {
          if (!turnFactor[lineState.Left] & !turnFactor[lineState.Right]) {
            // no turn is required
            Car.State = Smalsiukas::STEERING;
            Serial.println("[MOVING]: off-line, no action taken");
          } else {
            //Car.state = TURNING;
            Car.State = Smalsiukas::STEERING;
            Serial.println("[MOVING]: off-line, switch to STEERING");
          }
          tSteering1 = millis();
          tSteering2 = 0;
        }
        break;

 //     case TURNING:
 //       break;

      case Smalsiukas::STEERING:
        if (tSteering1) { // the car is turning: 1st phase of steering
          if ((millis() - tSteering1) > device.tMaxSteering1) { // Phase1 time exceeded
            steeringWheel.turn(0); // set wheels straight
            tSteering1 = 0;
            tSteering2 = millis();
          } else {
            steeringWheel.turn(turnAngle(&lineState)); // set wheels to predefined angle
          }
        }
        break;

      case Smalsiukas::STOP:
        if ((millis() - tSeeking) < device.tMaxSeeking) {
          Serial.println("[STOP]: end-of-line, searching back");
          Car.Throttle(1); // enable throttle
          Car.Speed(0); // run back at speed 1
          delay(20); // run for overshoot
          Car.State = Smalsiukas::MOVING;
        } else {
          Car.Throttle(0); // disable throttle
          Serial.print("[STOP]: lost line position after 'tMaxSeeking' = ");
          Serial.println(device.tMaxSeeking);
          beep(5); // lost in space
        }
        break;
    }

  } else {
    Car.Throttle(0);
  }

}

