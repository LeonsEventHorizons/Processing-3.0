//change the mag from previous lesson to zero (start from center) 
//instead of 200 by spiraling in. Notice the x any y does not change
//from the previous lesson. Only added mag and the mag increment.
float magnitude = 0;
float angle = radians(0);

float increment = 0.01;

void setup() {
  size(500, 500);
  smooth(4);
  background(0);  
  ellipseMode(CENTER);
  noStroke();
}

void draw() {

  float x = magnitude * cos(angle);
  float y = magnitude * sin(angle);  

  ellipse(x + width/2, y + height/2, 16, 16);

  angle += increment;
  magnitude += 0.07;  
}