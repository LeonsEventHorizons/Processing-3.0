float x;
float y;
float x2;
float y2;
PFont font;
int start;

void setup() {
  background(0);
  smooth();
  strokeWeight(1);
  stroke(255, 255, 255);  
  fullScreen();
  font = createFont("BodoniMT-Bold-48.vlw", 32);
  textFont(font);
  start = millis();
}

void draw() {

  doTime();
  translate(width/2, height/2);
  line(paraX1(x2), paraY1(y2), paraX(x), paraY(y));  
  x++;
  y++;
  x2+=2;
  y2+=2;
}

float paraX(float x1) {
  return sin(x1 / 2) * 400;
}

float paraY(float y1) {
  return sin(y1 / 4) * 400;
}

float paraX1(float x2) {
  return sin(x2 / 2) * 400;
}

float paraY1(float y2) {
  return sin(y2 / 4) * 400;
}

void doTime() {      
  int seconds = (millis() - start) / 1000;
  if (seconds > 6) {
    noLoop();
  }
}