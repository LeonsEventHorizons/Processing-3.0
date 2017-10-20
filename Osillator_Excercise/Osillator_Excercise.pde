
Oscillator[] array = new Oscillator[100];

void setup() {
  size(800, 800);
  smooth(4);
  background(0);

  for (int i = 0; i < array.length; i++) {
    array[i] = new Oscillator();
  }
}

void draw() {
  background(0);

  for (int i = 0; i < array.length; i++) {
    array[i].oscillate();
    array[i].display();
  }
}

class Oscillator {

  float xtheta;
  float ytheta;  

  float dxtheta;
  float dytheta;

  Oscillator() {
    xtheta = 0;
    ytheta = 0;

    dxtheta = random(-0.03, 0.03);
    dytheta = random(-0.03, 0.03);
  }

  void oscillate() {
    xtheta += dxtheta;
    ytheta += dytheta;
  }

  void display() {
    float x = map(sin(xtheta), -1, 1, 16, width - 16); 
    float y = map(cos(ytheta), -1, 1, 16, height - 16);   
    fill(255, 0, 0);  
    ellipse(x, y, 16, 16);
  }
}