class Car {
  float x, y;
  float w, h;
  float speed;

  Car(float x, float y, float w, float h, float speed) {
    rectMode(CENTER);
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.speed = speed;
  }

  void move() {
    x = x + speed;
    y = y + speed;

    if (x > width - w/2 || x < 0 + w/2) {
      speed = speed * -1;
    }
    if ( y > height - h/2 || y < 0 + h/2) {
      speed = speed * -1;
    }
  }

  void display() {
    fill(255, 0, 0);
    rect(x, y, w, h);
  }
  
  void collide(Car b)  {
    float difx = this.x - b.x;
    float dify = this.y - b.y;
    
    float distance = sqrt(sq(difx) + sq(dify));
    println(distance + " ");
  }
}