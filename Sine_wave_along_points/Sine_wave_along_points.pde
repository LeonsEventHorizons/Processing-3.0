float theta = 0.0;

void setup() {
  size(800, 800);
  smooth(4);
  background(0);
  noStroke();
}

void draw() {
  background(0);  

  theta += 0.01;

  float angle = theta;

  //This is actually a way to stop the looping from draw() method 
  //Here a "for" loop is used to draw all the pounts along a sine wave 
  //scaled to the pixel dimension of the window. 40 * 20
  for (int i = 0; i <= 40; i++) {
    float y = map(sin(angle), -1, 1, 0, height); 
    ellipse(i * 20, y, 20, 20);
    angle += 0.2;
  }
}