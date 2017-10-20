// This sketch is after the ProperDirection sketches. This one is a bit different.
// It uses a single state to control multiple directions. Instead of using
// speed = speed * -1 to rebound a ball we simply use appropriate x = x + speed, or
// x = x - speed or y = y + speed or y = y - 1 to move the cube in the desired direction.

float x, y, w, h;

float direction = 0;

float speed = 12;

void setup() {
  size(800, 300);
  smooth(4);
  background(0);
  noStroke();
  fill (255, 0, 0);
  frameRate(30);
  rectMode(CORNER);

  w = 35;
  h = 35;

  x = 0;
  y = height/2;
}

void draw() {

  background(0);
  rect(x, y, w, h);

  if (direction == 0) {
    y = y - speed;
    if (y < 0) {
      y = 0;
      direction = 1;
    }
  } else if (direction == 1) {
    x = x + speed;
    if (x > width - w) {
      x = width - w;
      direction = 2;
    }
  } else if (direction == 2) {
    y = y + speed;
    if (y > height - h) {
      y = height - h;
      direction = 3;
    }
  } else if (direction == 3) {
    x = x - speed;
    if (x < 0) {
      x = 0;
      direction = 0;
    }
  }
}