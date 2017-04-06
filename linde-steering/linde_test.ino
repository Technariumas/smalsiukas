
#define TAKEOVER A0
#define PILKAS 6
#define GELTONAS 5

#define SPI_LATCH           10  
#define SPI_DATA          11
#define SPI_CLK           13

#define CTRL_AUX      B00100000
  

#define THROTTLE_PIN1  A3
#define THROTTLE_PIN2 A4
#define THROTTLE_PIN3 A5

#define STEERING_ENABLE       7

// command inteface
#include <SerialCommand.h>
SerialCommand sCmd;     // The SerialCommand object

#include <Servo.h>

Servo myservo;  // create servo object to control a servo
// twelve servo objects can be created on most boards


volatile int pos = 0;    // variable to store the servo position

void CMD_any() {
  Serial.println("WUT?");
} 

void CMD_incr() {
  pos=pos+1;
}

void CMD_decr() {
  pos=pos-1;
}

uint8_t control = 0;


void sendControl(void);
void Aux(bool);

//pilkas geltonas
uint8_t center[] = {113, 138};

void setup() {
  pinMode(TAKEOVER, OUTPUT);
  pinMode(PILKAS, OUTPUT);
  pinMode(GELTONAS, OUTPUT);

  pinMode(THROTTLE_PIN1, OUTPUT);
  pinMode(THROTTLE_PIN2, OUTPUT);

  pinMode(STEERING_ENABLE, OUTPUT);

  pinMode(SPI_LATCH, OUTPUT);
  pinMode(SPI_DATA, OUTPUT);
Serial.begin(9600);
Serial.println("Start servo debug");


sendControl();
  
  analogWrite(PILKAS, center[0]);
  analogWrite(GELTONAS, center[1]);

myservo.attach(9);  // attaches the servo on pin 9 to the servo object

 //center
 
myservo.write(110); 
  delay(1000);

  digitalWrite(TAKEOVER, HIGH);

  delay(6000);
  

//  delay(2000);
//
//  analogWrite(PILKAS, 123);
//  analogWrite(GELTONAS, 148);

//  delay(500);

 


 
}





void loop() {
//  center[0]++;
//  center[1]++;
  

//  analogWrite(PILKAS, center[0]);
//  analogWrite(GELTONAS, center[1]);

//  delay(10);

//myservo.write(pos);              // tell servo to go to position in variable 'pos'
//Serial.print("Servo at ");
//Serial.println(pos);

//for (short i=30;i<110;i++) {
//myservo.write(i);              // tell servo to go to position in variable 'pos'
//Serial.print("Servo at ");
//Serial.println(i);
// delay(1500);

//myservo.write(129);


delay(1000);
 myservo.write(85);
 delay(100);
 Aux(1);
 delay(100);
 myservo.write(40);
 delay(1000);
 myservo.write(30);
 delay(1000);
 myservo.write(40);
 delay(1000);
 myservo.write(85);
 

//delay(2000);
//Aux(1);
//delay(200);

//digitalWrite(THROTTLE_PIN2, LOW);
//digitalWrite(THROTTLE_PIN1, HIGH); // forward

//delay(100);
//digitalWrite(STEERING_ENABLE, HIGH);

//delay(5000);

//digitalWrite(STEERING_ENABLE, LOW);
//delay(100);
//digitalWrite(STEERING_ENABLE, HIGH);
//delay(10);
//digitalWrite(THROTTLE_PIN1, LOW);
//digitalWrite(THROTTLE_PIN2, HIGH); // back
//delay(500);
//
//digitalWrite(STEERING_ENABLE, LOW);
//delay(100);
//digitalWrite(THROTTLE_PIN1, LOW);
//digitalWrite(THROTTLE_PIN2, LOW); // back

}

void Aux(bool state) {
  if (state) {
    control = control | CTRL_AUX;
  } else {
    control = control & ~CTRL_AUX;
  }
 sendControl();
}

void sendControl(void) {
   digitalWrite(SPI_LATCH, LOW);
   shiftOut(SPI_DATA, SPI_CLK, MSBFIRST, control);  
   digitalWrite(SPI_LATCH, HIGH);
}
