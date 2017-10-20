//Exercise 13-2: Fill in the blanks in the following code so that the circle has a 10 percent chance of moving up, a 20%
//chance of moving down, and a 70 percent chance of doing nothing.

float x, y, dia;

void setup() {
  size(600, 600);
  smooth(4);
  background(255);  
  stroke(255, 0, 0);
  frameRate(10);
  dia = 20;
  x = width/2;
  y = height/2;
}

void draw() {

  fill(255, 0, 0);

  float probA = 0.10;
  float probB = 0.20;
  float probC = 0.70;

  float r = random(0, 1);

  if (r < probA) {
    y-=25;
  } else if (r < probA + probB) {
    y+=25;
  }
  ellipse(x, y, dia, dia);
}