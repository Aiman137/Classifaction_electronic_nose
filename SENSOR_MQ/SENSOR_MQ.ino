int raw_adc0;
int raw_adc1;
int raw_adc2;

float value_adc0;
float value_adc1;
float value_adc2;
void setup() {
  Serial.begin(9600);
  Serial.println("A0 \t A1 \t \A2");
}
void loop() {
  raw_adc0 = analogRead(A0);
  delay(10);
  raw_adc0 = analogRead(A0);
  delay(10);
  value_adc0 = raw_adc0 * (5.0 / 1023.0);
  //Serial.print("A0 = ,");
  Serial.print(value_adc0);
  Serial.print("\t ");
  raw_adc1 = analogRead(A1);
  delay(10);
  raw_adc1 = analogRead(A1);
  delay(10);
  value_adc1 = raw_adc1 * (5.0 / 1023.0);

  Serial.print(value_adc1);
  Serial.print("\t ");
  raw_adc2 = analogRead(A2);
  delay(10);
  raw_adc2 = analogRead(A2);
  delay(10);
  value_adc2 = raw_adc2 * (5.0 / 1023.0);
  Serial.println(value_adc2);
  Serial.println("\t ");
  //Serial.println("A0 ="+String(raw_adc0)+","+String(value_adc0)+", \t"+"A1 ="+String(raw_adc1)+","+String(value_adc1)+", \t"+"A2 ="+String(raw_adc2)+","+String(value_adc2));
}