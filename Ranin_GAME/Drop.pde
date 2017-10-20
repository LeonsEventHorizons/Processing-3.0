class Drop {
  float x, y, diaX, diaY;
  float speed;
  boolean collide;
  int score = 10;
  int direction = 0;

  Drop(float _speed) {
    diaX = 20;
    diaY = 40;
    x = random(width);
    speed = _speed;    
    collide = false;
  }

  void display() {
    fill(0, 0, 255);
    noStroke();
    ellipseMode(CENTER);
    ellipse(x, y, diaX, diaY);

    //for (int i = 2; i < diaX; i++) {
    //  ellipse(x, y + i*4, i*2, i*2);
    //}
  }

  void moveRainDrops() {
    y = y + speed;
  }

  boolean dropReachedBottom() {
    if (y > height - diaY/2) {
      hitsBottom();
      return true;
    }
    return false;
  }

  void hitsBottom() {
    y = height - diaY/2;
    y = -1000;
    speed = 0;
  }

  void caught() {
    speed = 0;
    y = -1000;
    diaX = 0;
    diaY = 0;
  }

  boolean checkCollide() {
    float diffX = this.x - catcher.x;
    float diffY = this.y - catcher.y;

    float distance = sqrt(sq(diffX) + sq(diffY));
    for (int i = 0; i < totalDrops; i++) {
      if (distance < drop[i].diaX + catcher.dia/2 && distance < drop[i].diaY + catcher.dia/2) {
        return true;
      }
    }
    return false;
  }
}