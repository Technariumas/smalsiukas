
speedInit(short pin) {
  speedServo.attach(pin);  // attaches the servo on pin 9 to the servo object
  _speedRequest = _speedCenter;
  speedUpdate();
}

Speed::set(int dSpeed) {
  if (dSpeed > 0 ) { //fwd
    State = FWD;
  } else {
    State = BACK;
  }
  if (dSpeed < _min) {
    dSpeed = _min;
  }

  if (dSpeed > _max) {
    dSpeed = _max;
  }

  _request = dSpeed;
  speedUpdate();
}

speedGet() {
  return _speedCurrent;
}

speedUpdate() {
  if (_speedRequest < _speedTrigLow) && (_speedCurrent > _speedtrigLow) {
    if (_speedCurrent > _speedTrigHigh) {
      _speedCurrent = _speedTrigHigh;
    } else {
      _speedCurrent = _speedTrigLow;
    }
  } else {
    _speedCurrent = _speedRequest;
  }

  if (_speedrequest > _trigHigh) && (_current < _trigHigh) {
    if (_speedCurrent < _speedTrigLow) {
      _speedCurrent = _speedTrigLow;
    } else {
      _speedCurrent = _speedTrigHigh;
    }
  } else {
    _speedCurrent = _speedRequest;
  }

// button handling
  if ((_speedCurrent != _speedRequest ) && (_speedCurrent = _speedTrigLow) || (_speedCurrent = _speedTrigLow)) {
    SpeedBtn(!_speedBtnState);
    } 
  



}

Speed::SpeedBtn( state ) {
  
  _speedBtnState = state;
  
  }


