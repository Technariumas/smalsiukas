#ifndef Smalsiukas_h
#define Smalsiukas_h


#define CTRL_SEAT 		B00000001
#define CTRL_PARKING	B00000010
#define CTRL_HORN		  B00000100
#define CTRL_DIR_BACK	B00001000
#define CTRL_DIR_FWD	B00010000
#define CTRL_AUX		  B00100000
#define CTRL_MIRGALKE	B01000000
#define CTRL_LIGHTS		B10000000

#define Ctrl_SEAT 		0
#define Ctrl_PARKING	1
#define Ctrl_HORN		2
#define Ctrl_DIR_BACK	3
#define Ctrl_DIR_FWD	4
#define Ctrl_AUX		5
#define Ctrl_BEACON		6
#define Ctrl_LIGHTS		7

#define THROTTLE_PIN1	A3
#define THROTTLE_PIN2	A4
#define THROTTLE_PIN3	A5

#define UART_ENABLE 				2
#define MAGNET_ENGAGE 				3
#define STEERING_FAULT 				4
#define STEERING_DIR 				5
#define STEERING_STEP 				6
#define STEERING_ENABLE 			7
#define LINEAR_ACTUATOR_DIRECTION 	8
#define LINEAR_ACTUATOR_ENABLE 		9
#define SPI_LATCH 					10
#define SPI_DATA 					11
#define RANGEFINDER_WARNING 		12
#define SPI_CLK 					13
#define TAKEOVER 					A0
#define KEY_ENABLE					A1
#define GAZ_ENABLE					A2
#define GAZ_SPEED1 					A3
#define GAZ_SPEED2 					A4
#define GAZ_SPEED3 					A5 

#define HBRIDGE_CURRENT_ANALOG 		A6
#define WHEEL_POS_ANALOG 			A7


class Smalsiukas 
{
	protected:
		uint8_t control = 0;
    bool _init=0;
    short _direction; // movement direction: -1==back, 0 == stop, 1 == forward
		
	public:
	bool canMove = 0;  //set to 1 if the car can be moved
	typedef enum Speed_t {
			SPEED1,
			SPEED2,
			SPEED3
			};
  typedef enum state {
      IDLING,
      MOVING,
      STEERING,
      STOP,
      };

   state State;

      
	Smalsiukas(void); // constructor
  void Throttle(bool); // control throttle 
	void MasterKey(bool); // master key controll
	void Controll(bool); // set /release controll to Arduino board
	void Move(bool); // enable the forklift for moving operations
	void Speed(Speed_t); // set movement speed
	
	void Aux(bool); // enable / disable AUX output
	void Lights(bool); // enable / disable lights
	void Beacon(bool); // enable / disable beacon
	void Horn(bool); // enable / disable horn
	void Seat(bool); // enable / disable seat
	void sendControl(void); // send controll string
	
	private:
   spiBitBang(unsigned char); // bit-bang for SPI
};



#endif








