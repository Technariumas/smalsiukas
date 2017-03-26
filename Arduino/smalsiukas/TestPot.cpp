#include "Arduino.h"
#include "TestPot.h"


// constructor
TestPot::TestPot(short aPin) { 
  
  // init system
    _pin=aPin<13?aPin:A0; //fall back to pinA0 if incerrect pin was provided
    pinMode(_pin, INPUT);

    long Corrections[10];


    for (int n=0;n<10;n++){
      
      for (int i=0;i<10; i++){
        int cSensor = analogRead(_pin);
        _correction += cSensor;
        //Serial.print("\tcSensor =");
        //Serial.println(cSensor);
        delay(20);
        }
    Corrections[n]= _correction/10;
    _correction = 0;
   }

   for (int n=0;n<10;n++){
    _correction += Corrections[n];
   }
   _correction=_correction/10;
   _init=1;
 }

long TestPot::value(void) {
  _value = analogRead(_pin)-_correction;
  return _value;
}

// set correction to the potentiometer for straight run
short TestPot::setCorrection(short constant){ 
  _correction=constant>10?0:constant;
  return _correction;
}

// report the correction of the potentiometer for straight run
short TestPot::getCorrection(void){ 
  return _correction;
}

short TestPot::grads(int cValue) {
  int cPosition = cValue-512-_correction;
  short cAngle = cValue / 5;
  return cAngle;
  }

