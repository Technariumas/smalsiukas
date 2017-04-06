
#include <EEPROM.h>
#define __VERSION "0.1a"

//use Linde interface
#define LINDE 1

//#define TEST_MODE_0 1 // speed test mode
//#define TEST_MODE_1 1 // speed test mode
 #define TEST_MODE_2 1 // steering mode
// #define TEST_MODE_3 1 // line following mode


//#define _Baudrate 115200

#define T_DEBOUNCE 10

#define EEPROM_INIT 1

#include <SerialCommand.h>

#include "linde.h"
#include "SteeringPot.h"
#include "ctrl_Linde.h"

#include "LineSensor.h"


#include <Bounce2.h>
Bounce debouncTrig = Bounce();


// ----- Data structures ------
struct Device {
  bool DEBUG;
  unsigned long tMaxSeeking; // max line seeking time in usecs
  unsigned long tMaxSteering1; // max steering time in usecs in turning mode
  unsigned long tMaxSteering2; // max steering time in usecs in straight mode
  unsigned long tRun; // running time in test mode
  uint8_t SteeringUnit; // steering unit value as unit8
  unsigned long lineMaxUpdateTime; // update line position every ... usecs
};

struct Info {
  unsigned int baudrate; // RS-232 baudrate
  unsigned long signature;
};

struct LineState {
  unsigned short raw; // raw value
  unsigned short Left; // left side of sensor, BCD
  unsigned short Right; // right side of sensor, BCD
  bool Straight; // straight on the line, both sensors read the same values
  bool offLine; // off-the-line, both sensors readd 0x00;
  


// ------ Variables -----


#ifdef TEST_MODE_1
volatile unsigned long tRunning;
#endif

#ifdef TEST_MODE_2
short i;
volatile unsigned long tRunning;
#endif


Info deviceInfo;
Device device;
//LineState lineState;

unsigned short turnFactor[] = {0, 0, 1, 1, 2, 3, 4, 5}; // turn factor index, zero-based

// command inteface
SerialCommand sCmd;     // The SerialCommand object





// init steering and car
#ifdef LINDE
SteeringPot steeringWheel(SteeringPin, SteeringPinRev);
CtrlLinde Car;
//Car.canMove = 0; //Car is unable to move right now
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


/* ----------------------------------------------------------
 *  
 *    Move()
 *    
 *  prepare / stop forklift for movement operations
 * ----------------------------------------------------------
 */ 

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


/* ----------------------------------------------------------
 *  
 *    beep()
 *    
 *  just beep
 * ----------------------------------------------------------
 */ 
void beep(unsigned short times) {
  for (short i = 0; i < times; i++) {
    Car.Horn(1);
    delay(150);
    Car.Horn(0);
    delay(500);
  }
}



/* ----------------------------------------------------------
 *  
 *    bin2pos()
 *    
 *  convert binary code to positiona reading
 * ----------------------------------------------------------
 */ 
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


/* ----------------------------------------------------------
 *  
 *    lineArbitrate()
 *    
 *  parse and arbitrate line position
 * ----------------------------------------------------------
 */ 

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

/* ----------------------------------------------------------
 *  
 *    turnAngle()
 *    
 *  calculates turn angle according to line sensor readings
 * ----------------------------------------------------------
 */ 
 
 short turnAngle(LineState *LS) {
  // set positive value for turning left and negative for turning right
  uint8_t cPosition = max(abs(LS->Left), abs(LS->Right));
  short cAngle = turnFactor[cPosition] * device.SteeringUnit;
  if (abs(LS->Right) > LS->Left) {
    cAngle = 0 - cAngle;
    }
    return cAngle;
  }
  

/* ----------------------------------------------------------
 *  
 *                SETUP              
 *                
 * ----------------------------------------------------------
 */ 


void setup() {

// init data from EEPROM
 int eeAddress = 0;


#ifdef EEPROM_INIT 

//Device device;

  device.DEBUG = 1;
  device.tMaxSeeking = 2000; // max line seeking time in usecs
  device.tMaxSteering1 = 500; // max steering time in usecs in turning mode
  device.tMaxSteering2 = 500; // max steering time in usecs in straight mode
  device.SteeringUnit = 1; // steering unit value as unit8
  device.tRun = 4096;
  device.lineMaxUpdateTime = 200; // update lline position every 200 usecs
  
  deviceInfo.signature = 68; // the signature of the Thing
  deviceInfo.baudrate = 9600; 
  //deviceInfo.baudrate = 115200; 

  // write timings to EEPROM 
  EEPROM.put(eeAddress, deviceInfo);
  eeAddress += sizeof(deviceInfo);
  EEPROM.put(eeAddress, device);
  
  
eeAddress = 0;  
#endif

  EEPROM.get(eeAddress, deviceInfo);
  eeAddress += sizeof(deviceInfo); // skip to the profile 0
  EEPROM.get(eeAddress, device);


  // start serial port
  Serial.begin(deviceInfo.baudrate);
  delay(300);

  if (device.DEBUG) {
      Serial.print(F("[SETUP]: max line seeking time:\t"));
      Serial.print(device.tMaxSeeking);
      Serial.println(F(" us"));
      Serial.print(F("\tmax turning time:\t"));
      Serial.print(device.tMaxSteering1);
      Serial.println(F(" us"));
      Serial.print(F("\tmax off-line time:\t"));
      Serial.print(device.tMaxSteering2);
      Serial.println(F(" us"));
      Serial.print(F("\tSteering factor: \t"));
      Serial.print(device.SteeringUnit);
      Serial.println(F(" x"));
      Serial.print(F("[TEST MODE]: Run forward / back  for : \t"));
      Serial.print(device.tRun);
      Serial.println(F(" ms"));
    }

pinMode(BTN_START, INPUT);
  debouncTrig.attach(BTN_START);
  debouncTrig.interval(T_DEBOUNCE);

  // set up car
  Car.Beacon(1);
  Car.Lights(1);
  beep(3);
  //Car.Seat(1);


//
//    TEST SUITES
//



//
// TEST 0 : switch speeds
//
    #ifdef TEST_MODE_0
    Car.Controll(1);
    Car.setDirection(1); // move forward
    Car.Speed(1); // run at speed 1
    #endif


//
// TEST 1 : run forth and back for speen calibration
//
    #ifdef TEST_MODE_1
    Car.Controll(1);
    Car.setDirection(1); // move forward
    Car.Speed(1); // run at speed 1
    tRunning = millis();
    #endif


//
// TEST 2 : turn wheels left and right
//
    #ifdef TEST_MODE_2
    i=0;
    Car.Controll(1);
    Car.setDirection(1); // move forward
    steeringWheel.turn(i);
    tRunning = millis();
    #endif


//
// TEST 3 : stationery line following 
//
    #ifdef TEST_MODE_3
    i=0;
    Car.Controll(1);
    Car.setDirection(1); // move forward
    steeringWheel.turn(i);
    tRunning = millis();
    #endif
    
}

/* ---------------------------------------------------------------
 *  
 *                      MAIN LOOP
 *                      
 *  ---------------------------------------------------------------                    
 */ 




void loop() {
  if (debouncTrig.update()){
    if ( debouncTrig.read()) {
      bool tmp = Car.isReady();
      Car.setReady(!tmp); // trigger start condition
     if (tmp){
     Serial.print(F("[STARTBTN]: stopping at "));
     } else {
        Serial.print(F("[STARTBTN]: starting at "));
     }
        Serial.print(millis());
      Serial.print(F(" ms ("));
    }
  }
  
  #ifdef TEST_MODE_0
  //Car.setReady(1);
  steeringWheel.turn(0); // set wheels straight
  Car.Speed(0); // stop it
  
  #endif

  
  #ifdef TEST_MODE_1
  //Car.setReady(1);
  steeringWheel.turn(0); // set wheels straight
  unsigned long t = millis();
  long tDiff = t - tRunning - device.tRun;
  if (tDiff < 0) {
    //Car.Speed(0); // stop it
    Serial.print(F("[TEST 1]: running for "));
      Serial.print(tRunning);
      Serial.print(F(" ms ("));
      Serial.print(t);
      Serial.print(F(" ms), tDiff=")); 
      Serial.println(tDiff);  
  } else {
    Car.Speed(0); // stop it
    delay(1000);
    Car.reverseDirection(); //reverse direction, preserve angle
    Car.Speed(1); // run at speed 1
    
    Serial.print(F("[TEST 1]: reversing at "));
      Serial.print(tRunning);
      Serial.print(F(" ms ("));
      Serial.print(t);
      Serial.print(F(" ms), tDiff=")); 
      Serial.println(tDiff); 
      tRunning = t;
   }
  #endif

  #ifdef TEST_MODE_2
  //Car.setReady(1);
  if (Car.canMove) {
  unsigned long t = millis();
  long tDiff = t - tRunning - device.tRun;
  if (tDiff > 0) {
    if (i>9) {
      i=-10;
    } else {
      i++;
    }
    steeringWheel.turn(i*10);
    tRunning = millis();
    Serial.print(F("[TEST 2]: wheel angle "));
      Serial.print(i*10);
      Serial.print(F(" at "));
      Serial.print(t);
      Serial.println(F(" us"));
  }
  }
  #endif

  #ifdef TEST_MODE_3
  cLinePosition = lineSensing.get();
  lineArbitrate(cLinePosition, &lineState);
    Serial.print(F("[TEST 3]: line readings at ");
    Serial.print(millis());
    Serial.print(F(" us:\n\tRAW:\t["));
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
  steeringWheel.turn(turnAngle(&lineState)); // set wheels to predefined angle
  delay(500); // bad and ugly, on the same line
  #endif


  #ifndef TEST_MODE_0
  
  #ifndef TEST_MODE_1
  #ifndef TEST_MODE_2
  #ifndef TEST_MODE_3
  
  if (Car.canMove) {
    cLinePosition = lineSensing.get();
    lineArbitrate(cLinePosition, &lineState);
    if (device.DEBUG) {
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
    }

    switch (Car.State) {
      case Smalsiukas::IDLING:
        steeringWheel.turn(0); // set wheels straight
        // Car.Throttle(1); // Trottle is controlled by .Speed()
        Car.setDirection(1); // move forward
        Car.Speed(1); // run forward at speed 1
        Car.State = Smalsiukas::MOVING;
        if (device.DEBUG) {
          Serial.println(F("[LOOP]: car started"));
          }
        break;
      
    case Smalsiukas::MOVING:
      if (!lineState.Straight && (lineState.Left && lineState.Right)) { // sensors on both sides are on line
          // Car.Throttle(0); // Trottle is controlled by .Speed()
          Car.Speed(0);
          tSeeking = millis();
          Car.reverseDirection(); //reverse direction, preserve angle
          Car.State = Smalsiukas::STOP;
          if (device.DEBUG) {
            Serial.println(F("[MOVING]: end-of-line detected"));
            }
        }
        if (!lineState.Straight && (lineState.Left || lineState.Right)) {
          if (!turnFactor[lineState.Left] & !turnFactor[lineState.Right]) {
            // no turn is required
            Car.State = Smalsiukas::STEERING;
            if (device.DEBUG) {
              Serial.println(F("[MOVING]: off-line, no action taken"));
              }
          } else {
            //Car.state = TURNING;
            Car.State = Smalsiukas::STEERING;
            if (device.DEBUG) {
              Serial.println(F("[MOVING]: off-line, switch to STEERING"));
              }
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
            if (device.DEBUG) {
            Serial.println(F("[STEERING]: setting wheels straight"));
            }
            tSteering1 = 0;
            tSteering2 = millis();
          } else {
            steeringWheel.turn(turnAngle(&lineState)); // set wheels to predefined angle
            if (device.DEBUG) {
            Serial.print(F("[STEERING]: setting wheels to "));
            Serial.print(turnAngle(&lineState));
            Serial.println(F(" grads"));
            }
          }
        }
        break;

      case Smalsiukas::STOP:
        if ((millis() - tSeeking) < device.tMaxSeeking) {
          if (device.DEBUG) {
            Serial.println("[STOP]: end-of-line, searching back");
          }
          // Car.Throttle(1); // Trottle is controlled by .Speed()
          Car.reverseDirection(); // reverse the car
          Car.Speed(1); // run back at speed 1
          //delay(20); // run for overshoot
          Car.State = Smalsiukas::MOVING;
        } else {
          // Car.Throttle(0); // Trottle is controlled by .Speed()
          Car.Speed(0);
          if (device.DEBUG) {
            Serial.print("[STOP]: lost line position after 'tMaxSeeking' = ");
            Serial.println(device.tMaxSeeking);
          }
          beep(5); // lost in space
        }
        break;
    }

  } else {
   // Car.Throttle(0); // Trottle is controlled by .Speed()
    Car.Speed(0); // stop
    // Car.setMoving(0); // state is controlled by .Speed()
    if (device.DEBUG) {
      Serial.println(F("[LOOP]: car stopped"));
    }
  }
#endif
#endif
#endif
#endif
}

