float x, y;
float diaX, diaY;
float changeAlongX;

void setup()  {
  size(400, 800);
  smooth(2);
  background(0);
  frameRate(5);
  
  diaX = 50;
  diaY = 100;
  
  rectMode(CENTER);
  x = width/2;  
  y = height + diaY / 2;  
}

void draw()  {  
  background(0);
  changeAlongX = random(0, width);  
  rect(changeAlongX, y, diaX, diaY);  
  y-=1;
}