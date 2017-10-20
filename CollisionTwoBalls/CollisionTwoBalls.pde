float x1, y1;
float x2, y2;
float diaOne;
float diaTwo;

float speed = 1;

void setup() {
  size(800, 400);
  smooth(4);
  background(0);  
  noStroke();

  diaOne = 50;
  diaTwo = 50;

  x1 = 0 + diaOne/2;
  y1 = height/2;

  x2 = width - diaTwo/2;
  y2 = height/2;
}

void draw() {
  background(0);
  
  constraints();
  
  boolean isCollide = collision();
  
  if (isCollide)  {
    
    abs(speed);
  }

  fill(255, 0, 0);
  ellipse(x1, y1, diaOne, diaOne);
  fill(255, 255, 0);
  ellipse(x2, y2, diaTwo, diaTwo);
  
  println("PointOne" + x1 + ", " +y1);
  println("PointTwo" + x2 + ", " +y2);
  print();
}

boolean collision()  {
  
  //The only difference from the previous mouse drag change over square are these expressions 
  //Instead of using mouseX and mouseY for the distance calucalations
  float difX = x1 - x2;
  float difY = y1 - y2;
  //.........................................................................................
  
  float distance = sqrt(sq(difX) + sq(difY));
  if (distance < ((diaOne / 2) + (diaTwo / 2)))  {
    return true;   
  }
  return false;  
}

void constraints()  {
  x1 = x1 + speed;
  x2 = x2 - speed;    
  
    
  
}