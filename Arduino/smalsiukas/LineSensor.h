#ifndef LineSensor_h
#define LineSensor_h

// update line at every 200 usec
#define T_LINE_MAX_UPDATE 200

class LineSensor 
{

  public:
    LineSensor(short int);
    bool errCRC;
    bool errTIMEOUT;
    uint8_t get(void); // report current reading

  private:
    uint8_t update(void);
    
    uint8_t checksum;
    long tLastAcquired; // last line aquisition time in usecs
    long reqTs; // 
    short _pin; // pin for PWM
    uint8_t _line; // line reading
    uint8_t line_tmp;
    bool _init=0;

    enum SensorState {  STATE_IDLE,
      STATE_REQUESTED,
      STATE_GOT1BYTE,
      STATE_AVAILABLE
      };

    SensorState state = STATE_IDLE;
    
};

#endif
