

void setup() {
}

void draw() {
}

class Bat {
  float batX;
  float batY;
  float batWidth;
  float batHeight;
  float distance;
  float collide;
  
  void drawBat()  {
    rect(batX, batY, batWidth, batHeight);
  }
}

//Bat has a ball

class Ball {
  Bat bat;
  int ballX;
  int ballY;
  float ballDiameter;
  float change = 0.5;  

  void moveBall() {    
  }
  
  float distance(Bat bat, Ball ball)  {    
    return 0.0;
  }
  
}