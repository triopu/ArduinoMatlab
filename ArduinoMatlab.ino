void setup() {
  Serial.begin(9600);
  int sensorPin = A0;
}

void loop() {
  int data = analogRead(sensorPin);
  Serial.println(data);
  delay(1000);
}
