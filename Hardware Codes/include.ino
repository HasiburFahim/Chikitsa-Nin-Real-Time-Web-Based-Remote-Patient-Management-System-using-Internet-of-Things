#include <ESP8266WiFi.h>
#include <OneWire.h>
#include <DallasTemperature.h>
#include <LiquidCrystal_I2C.h>
LiquidCrystal_I2C lcd(0x27,16,2);
#define myPeriodic 15 //in sec | Thingspeak pub is 15sec
#define ONE_WIRE_BUS 2  // DS18B20 on arduino pin2 corresponds to D4 on physical board
OneWire oneWire(ONE_WIRE_BUS);
DallasTemperature DS18B20(&oneWire);
float prevTemp = 0;
const char* server = "api.thingspeak.com";
String apiKey ="PU95Z0YN4L78J0Z6";
const char* MY_SSID = "Iftekhar"; 
const char* MY_PWD = "temp1234";
int sent = 0;
void setup() {
  Serial.begin(115200);
  lcd.init();
  lcd.backlight();
  lcd.setCursor(0,0);
  lcd.print(" Patient Health");
  lcd.setCursor(0,1);
  lcd.print(" Monitoring ");
  lcd.clear();
  connectWifi();
}
void loop() {
  int temp;
  float temp1;
  //char buffer[10];
  DS18B20.requestTemperatures(); 
  temp1 = DS18B20.getTempCByIndex(0);
  temp = (temp1*1.8+32);
  //String tempC = dtostrf(temp, 4, 1, buffer);
  Serial.print(String(sent)+" Temperature: ");
  Serial.println(temp);
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Temp: ");
  lcd.setCursor(6,0);
  lcd.print(temp);
  lcd.setCursor(9,0);
  lcd.print("F");
  int bpm= analogRead(A0);
  int sensorValue = bpm -500+20 ;
  if(sensorValue>100)
  sensorValue = sensorValue/10;
  lcd.setCursor(0,1);
  lcd.print("BPM:");
  lcd.setCursor(5,1);
  lcd.print(sensorValue);
  //if (temp != prevTemp)
  //{
  //sendTeperatureTS(temp);
  //prevTemp = temp;
  //}
  pathao(temp,sensorValue);
  int count = myPeriodic;
  while(count--)
  delay(1000);
}
void connectWifi()
{
  Serial.print("Connecting to "+*MY_SSID);
  WiFi.begin(MY_SSID, MY_PWD);
  while (WiFi.status() != WL_CONNECTED) {
  delay(1000);
  Serial.print(".");
  lcd.setCursor(0,0);
  lcd.print("Device Offline");
  }
  Serial.println("");
  Serial.println("Connected");
  Serial.println("");  
}//end connects
void pathao(int temp,int bpm)
{  
   WiFiClient client;
   if (client.connect(server, 80)) { 
   Serial.println("WiFi Client connected ");
   String postStr = apiKey;
  postStr += "&field1=";
   postStr += String(bpm);
   postStr += "&field2=";
   postStr += String(temp);
   postStr += "\r\n\r\n";
   client.print("POST /update HTTP/1.1\n");
   client.print("Host: api.thingspeak.com\n");
   client.print("Connection: close\n");
   client.print("X-THINGSPEAKAPIKEY: " + apiKey + "\n");
   client.print("Content-Type: application/x-www-form-urlencoded\n");
   client.print("Content-Length: ");
   client.print(postStr.length());
   client.print("\n\n");
   client.print(postStr);
   delay(1000);
   }
   sent++;
 client.stop();
}
