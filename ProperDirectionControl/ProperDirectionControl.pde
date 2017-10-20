float x, y;
float dia;
int speed;

void setup()  {
  size(800, 300);
  smooth(4);
  background(0);
  noStroke();
  fill (255, 0, 0);
  frameRate(30);
  
  dia = 50;
  x = 0 + dia/2;
  y = height/2;  
  speed = 10;
}

void draw()  {
  background(0);
  
  ellipse(x, y, dia, dia);
  
  //Simply to get the ball rolling. Don't touch X again
  x = x + speed;
  
  //Now lets control the direction when ball hits a side(s)
  //Simply ALWAYS just multiply by negative -1. Don't need to worry
  //about positive or negative directions. Much better than 
  // speed = speed + 1 and speed = speed - 1.
  if (x > width - dia/2 || x < 0 + dia/2)  {
    speed = speed * -1;
  }
  
}