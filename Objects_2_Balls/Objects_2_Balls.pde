Ball ball;
Ball ball2;
Ball ball3;
Ball ball4;

void setup() {
  size(800, 800);
  smooth(4);
  background(255);
  ellipseMode(CENTER);
  frameRate(30);
  strokeWeight(1);

  ball = new Ball(width/2, 50, 50, 0.95);
  ball2 = new Ball(width/3, 50, 20, .75);
  ball3 = new Ball(width/4, 50, 70, .85);
  ball4 = new Ball(2*width/3, 50, 60, .85);
}

void draw() {
  background(255);
  ball.display();
  ball.moveBall();

  ball2.display();
  ball2.moveBall();

  ball3.display();
  ball3.moveBall();

  ball4.display();
  ball4.moveBall();
}

class Ball {
  float x;
  float y;
  float speed;
  float size;
  float gravity;

  Ball(float _x, float _y, float _size, float _gravity) {
    x = _x;
    y = _y;
    size = _size;
    speed = 0;    
    gravity = _gravity;
  }

  void display() {
    fill(255, 0, 0);
    stroke(0);
    ellipse(x, y, size, size);
  }

  void moveBall() {
    y = y + speed; 
    speed = speed + this.gravity;

    if (y > height - size/2) {
      speed = speed * - 0.75;
    }
  }
}