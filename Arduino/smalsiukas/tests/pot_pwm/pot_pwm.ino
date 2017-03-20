
#include "../../../include/SteeringPot.h"
#include "..\include\TestPot.h"

int potPin = A0;    // select the input pin for the potentiometer
int drivingPin = 6;    // pwm goes to
int ledPin = 13;      // select the pin for the LED
long pValue;  // variable to store the previous value from the steering wheel

long tmp;

void setup() {
  // put your setup code here, to run once:
  // initialize serial communications at 9600 bps:
  Serial.begin(115200);
  delay(300);
  
  TestPot refPot(potPin);

  Serial.print("Joystick correction = ");
  Serial.println(refPot.getCorrection);
  
  SteeringPot steeringWheel(drivingPin);

  Serial.print("Steering correction = ");
  Serial.println(steeringWheel.getCorrection);
  
  // declare the ledPin as an OUTPUT:
  pinMode(ledPin, OUTPUT);

}

void loop() {
  // put your main code here, to run repeatedly:
   
  steeringWheel.turn(tmp=refPot.value());
   digitalWrite(ledPin, HIGH);
   if (pValue != tmp) { 
    pValue = tmp;
      Serial.print("Potentiometer = ");
      Serial.print(pValue);
      Serial.print("\t current angle = ");
      Serial.print(steeringWheel.getAngle());
      Serial.print("\n \tPotentiometer correction = ");
      Serial.println(refPot.getCorrection);
    }
    delay(abs(refPot.grads());
    // turn the ledPin off:
    digitalWrite(ledPin, LOW);
}
