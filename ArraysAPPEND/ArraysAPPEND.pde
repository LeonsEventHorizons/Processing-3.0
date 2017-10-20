Ball[] balls = new Ball[1];

void setup() {
  size(800, 800);
  smooth(4);
  background(0);  
  balls[0] = new Ball(100, 100, 50, 50);
}

void draw() {
  background(0);  
  for (int i = 0; i < balls.length; i++) {
    balls[i].display();
    balls[i].zigzag();
  }
}

void mousePressed() {
  Ball makeBall = new Ball(mouseX, mouseY, 50, 50);  
  balls = (Ball[]) append(balls, makeBall);
  println(balls.length);
}

class Ball {
  float x, y, w, h;

  Ball(float _x, float _y, float _w, float _h) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
  }
  
  void zigzag()  {
    x = x + random(-1, 1);
    y = y + random(-1, 1);
    
    x = constrain(x, 0, width);
    y = constrain(y, 0, height);
    
  }

  void display() {
    noStroke();
    ellipseMode(CENTER);
    ellipse(x, y, w, h);
  }
}