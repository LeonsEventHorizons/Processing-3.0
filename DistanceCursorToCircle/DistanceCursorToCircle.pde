//First circle
int x = 50;
int y = 50;
int dia = 75;

//Second Circle
int x2, y2;
int dia2;

void setup() {
  size(200, 200);
  smooth(4);
  background(255);
  noStroke();
  ellipseMode(CENTER);

}

void draw() { 
  background(255);
  fill(0, 0, 255);
  
  if (isInDistance(x, y, dia))  {
    fill(255, 0, 0);
  }

  ellipse(x, y, dia, dia);
  ellipse(x2, y2, dia2, dia2);
  
  //Used for debugging
  println(isInDistance(x, y, dia));  
}

boolean isInDistance(float _x, float _y, float _dia)  {
  
  //This is really the first part of the distance formula for two points
  float difX = _x - mouseX;
  float difY = _y - mouseY;
  
  //Once we have the difference between each point above just use pythagorus
  float distance = sqrt( (difX*difX) + (difY*difY) );
  
  if (distance < _dia/2)  {
    return true;
  }
  return false;  
}