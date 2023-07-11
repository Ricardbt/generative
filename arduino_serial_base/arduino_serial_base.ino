                      // Switch connected to pin 4
int firstSensor = 0;  
void setup() {
      firstSensor = analogRead(A0);
Serial.begin(9600);                    // Start serial communication at 9600 bps
}

void loop() {
  firstSensor = analogRead(A0);
 Serial.write(firstSensor);

  delay(100);                            // Wait 100 milliseconds
}
