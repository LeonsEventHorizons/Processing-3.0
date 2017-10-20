float xTime = 0.0;
float yTime = 100;
float x, y;

void setup() {
  size(200, 200);
  smooth(4);
  background(0);
  ellipseMode(CENTER);
  x = width/2;
  y = height/2;
}

void draw() {

  background(0);

  float x = noise(xTime) * width;
  float y = noise(yTime) * height;

  fill(200);
  ellipse(x, y, 50, 50);

  xTime += 0.01;
  yTime += 0.01;
}