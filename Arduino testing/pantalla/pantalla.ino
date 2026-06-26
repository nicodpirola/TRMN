#include <SPI.h>
#include <Adafruit_GFX.h>
#include <Adafruit_ILI9341.h>

// =====================================================
// CONEXIONES PARA ESP32 (Hardware VSPI)
// =====================================================
// VCC    -> 5V o VIN  (¡Muy importante!)
// GND    -> GND
// CS     -> GPIO 5
// RESET  -> GPIO 4
// DC/RS  -> GPIO 2
// SDI(MOSI)-> GPIO 23 (Hardware VSPI MOSI)
// SCK    -> GPIO 18 (Hardware VSPI SCK)
// LED    -> 3.3V
// =====================================================

#define TFT_CS    5
#define TFT_RST   4
#define TFT_DC    2

// Inicializar por Hardware SPI (es más rápido y robusto)
Adafruit_ILI9341 tft = Adafruit_ILI9341(TFT_CS, TFT_DC, TFT_RST);

void setup() {
  Serial.begin(9600);
  Serial.println("Iniciando prueba de pantalla KMRT 24024 (ILI9341/ST7789)..."); 
 
  tft.begin();
  
  // Prueba de colores primarios
  Serial.println("Pintando de ROJO...");
  tft.fillScreen(ILI9341_RED);
  delay(1000);
  
  Serial.println("Pintando de VERDE...");
  tft.fillScreen(ILI9341_GREEN);
  delay(1000);
  
  Serial.println("Pintando de AZUL...");
  tft.fillScreen(ILI9341_BLUE);
  delay(1000);
  
  // Fondo negro y texto
  tft.fillScreen(ILI9341_BLACK);
  tft.setCursor(20, 100);
  tft.setTextColor(ILI9341_WHITE);
  tft.setTextSize(3);
  tft.println("PANTALLA VIVA!");
  
  Serial.println("Prueba completada. Si sigue en blanco, la pantalla esta MUERTA.");
}

void loop() {
  // Parpadear el texto para demostrar que el bucle sigue vivo
  tft.setTextColor(ILI9341_GREEN);
  tft.setCursor(20, 100);
  tft.println("PANTALLA VIVA!");
  delay(500);
  
  tft.setTextColor(ILI9341_BLACK);
  tft.setCursor(20, 100);
  tft.println("PANTALLA VIVA!");
  delay(500);
}
