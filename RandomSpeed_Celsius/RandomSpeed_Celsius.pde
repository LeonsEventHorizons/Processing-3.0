float x, y;
float dia;

void setup() {
  size(500, 500);
  smooth(4);
  background(255);
  ellipseMode(CENTER);
  frameRate(30);

  //Covert farenheit to celsius
  float getCelsius = toCelsius(20);
  print(getCelsius);  

  dia = 50;
  x = width/2;
  y = height/2;
}

void draw() {
  background(255);  
  drawBall();
  moveBall(25);
  
  spaceship(width/2, height/2, 200, color(255,0,0));
}

float toCelsius(float farenheit) {
  float result =  (farenheit - 32) * 5/9 ;
  return result;
}

void drawBall() {
  fill(255, 0, 0);
  noStroke();
  ellipseMode(CENTER);
  ellipse(x, y, dia, dia);
}

void moveBall(float speed) {

  x = x + random(-speed, abs(speed));
  y = y + random(-speed, abs(speed));

  //This constrains the ball to inside of the window.
  //This is a shortcut from the usuall conditions. 
  x = constrain(x, 0 + dia/2, width);
  y = constrain(y, 0 - dia/2, height);
}

void spaceship(float x, float y, float size, color c)  {
  float offset = size/4;
  fill(c);
  ellipse(x, y, 2.5*offset, offset/2);
  ellipse(x , y - offset, 2*offset, 4*offset/2);
}