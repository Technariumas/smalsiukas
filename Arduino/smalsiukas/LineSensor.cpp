#include "Arduino.h"
#include "LineSensor.h"

// constructor
LineSensor::LineSensor(short int Pin) { 
  // init system
    pinMode(_pin, OUTPUT);
    _init=1;
  }

// PATCH functions
// report current reading
short LineSensor::get(void){ 
  return B00011000;
}

