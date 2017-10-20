int direction = 0;
float circleX =  
float dia = 25;
float change = 0.5;

void setup()  {
  size(600, 600);
  background(0);
  smooth();
  stroke(255);
  ellipseMode(CENTER);
  rectMode(CENTER);  
}

void draw()  {  
  



  

}

void mousePressed()  {}

void keyPressed()  {
  if (direction == 0)  {
    background(255, 0, 0);
    direction = 1;
    print("top" +direction);
  }
  else if (direction == 1)  {
    background(0, 0, 255);
    direction = 0;
    print("bottom" +direction);
  }    
}