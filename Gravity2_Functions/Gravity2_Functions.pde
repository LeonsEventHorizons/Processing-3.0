float x, y;
float dia;
float speedX;
float speedY;
float damp;

void setup() {
  size(500, 500);
  smooth(4);
  background(255);
  ellipseMode(CENTER);
  frameRate(30);
  strokeWeight(1);

  dia = 50;
  damp = 0.95;
  speedX = 6;
  speedY = -10;
  x = 100+dia/2;
  y = 100+dia/2;
}

void draw() {  
  drawBall();
  move();  
}

void drawBall() {
  background(255);
  fill(255, 0, 0);
  noStroke();
  ellipse(x, y, dia, dia);
}

void move() {
  x = x + speedX;
  y = y + speedY;
  speedX = speedX + damp;
  speedY = speedY + damp;

  if (x > width - dia/2 || x < 0 + dia/2) {
    //speedX = speedX * -1; //If using no gravity use this to bounce of walls
    speedX = abs(speedX) * -0.77;
  }
  if (y > height - dia/2 || y < 0 + dia/2) {
    //speedY = speedY * -1;
    speedY = abs(speedY) * -0.73;
  }
}