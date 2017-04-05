#include "Arduino.h"
#include "LineSensor.h"


#define LINE_READ_INTERVAL 2
#define READ_REQ_TIMEOUT 5


// constructor
LineSensor::LineSensor(short Pin) {
  // init system
  pinMode(_pin, OUTPUT);
  _init = 1;
}

// report current reading
uint8_t LineSensor::get(void) {
  if ((millis() - tLastAcquired) < T_LINE_MAX_UPDATE) {
    return _line;
  } else {
    LineSensor::update();
    return _line;
  }
}

uint8_t LineSensor::update(void) {
  switch (state) {
    case SensorState::STATE_IDLE:
      while (Serial.available()) {
        Serial.read();
      }
      digitalWrite(_pin, HIGH);
      Serial.write('?');
      Serial.flush();
      //while (!(UCSR0A & _BV(TXC0))) {
      //  //WAIT
      //}
      digitalWrite(_pin, LOW);
      state = SensorState::STATE_REQUESTED;
      reqTs = millis();
      errTIMEOUT = 0;
      errCRC = 0;
      return 0;
      
    case SensorState::STATE_REQUESTED:
      if (Serial.available()) {
        line_tmp = Serial.read();
        state = SensorState::STATE_GOT1BYTE;
        reqTs = millis();
      } else if ((millis() - reqTs) > READ_REQ_TIMEOUT) {
        state = SensorState::STATE_IDLE;
        errTIMEOUT = 1;
      }
      return 0;
      
    case SensorState::STATE_GOT1BYTE:
      if (Serial.available()) {
        checksum = Serial.read();
        uint8_t t = (~line_tmp + 1);
        if (t == checksum) {
          state = SensorState::STATE_AVAILABLE;
          _line = line_tmp;
          tLastAcquired = millis();
        } else {
          state = SensorState::STATE_IDLE;
          errCRC = 1;
        }
      } else if ((millis() - reqTs) > READ_REQ_TIMEOUT) {
        state = SensorState::STATE_IDLE;
        errTIMEOUT = 1;
      }
      return 0;
    case SensorState::STATE_AVAILABLE:
      state = SensorState::STATE_IDLE;
      return 1;
  }
}





