//This sketch introduces the concept of using gravity. Remember gravity is just another word
//as Einstien postulated, for acceleration. Acceleration descreses or increases your 
//"speed" variable. In other words, acceleration is the rate of change of speed. And speed
//is the rate of change of location.

float x, y;
float w, h;

float speed = 0;
float gravity = 0.8; //Controls the rate at which the cube falls

void setup() {
  size(300, 800);
  smooth(4);
  background(0);
  noStroke();
  fill (255, 0, 0);
  frameRate(30);
  rectMode(CENTER);
  
  w = 50;
  h = 50;
  x = width/2;
  y = 50;
}

void draw()  {
  background(0);
  rect(x, y, w, h);
  
  y = y + speed;
  //The new introduced gravity variable expression
  speed = speed + gravity; 
  
  //Bounce back up!
  if (y > height - h/2)  {    
    y = height - h/2;
    
    //Instead of speed = speed * -1, now simply multiply by -0.95
    // Multiplying by -0.95 instead of -1 slows the square down each 
    //time it bounces (by decreasing speed)
    //Simply add a change of direction with a bit of damping on each bounce 
    //(direction change)
    speed = abs(speed) * -0.75; //Controls how far up the cube bounces
    
  }  
}