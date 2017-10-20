void setup() {
  size(800, 800);
  smooth(4);
  background(255);
  ellipseMode(CENTER);
  frameRate(30);
  strokeWeight(1);
}

void draw() {
  background(255);
  drawSpaceShip(width/2, height/2, 150, color(0, 0, 0));  
  drawSpaceShip(200, height/4, 40, color(0, 0, 0));
  drawSpaceShip(600, 200, 120, color(0, 0, 0));
  drawSpaceShip(300, 600, 60, color(0, 0, 0));
  drawSpaceShip(600, 700, 35, color(0, 0, 0));  
}

void drawSpaceShip(float x, float y, float size, color c) {
  float offset = size/2;

  fill(c);
  noStroke();
  ellipse(x, y - offset, offset*2, offset*2);
  ellipse(x, y, size*2.5, size);
  
  fill(0, 0, 255);
  ellipse(x - offset * 1.5, y, offset, offset);
  ellipse(x, y, offset, offset);
  ellipse(x + offset * 1.5, y, offset, offset);
}