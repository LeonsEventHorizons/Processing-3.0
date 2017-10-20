Button[] buttons = new Button[15];

void setup() {
  size(800, 800);
  smooth(4);
  background(0);

  for (int i = 0; i < buttons.length; i++) {
    buttons[i] = new Button(random(0, width), random(0, height), 100, 25);
  }
}

void draw() {
  background(0);
  for (int i = 0; i < buttons.length; i++) {
    buttons[i].display();
  }
}

class Button {

  float x;
  float y;
  float w;
  float h;
  boolean on;

  Button(float tempX, float tempY, float tempW, float tempH) {
    x = tempX;
    y = tempY;
    w = tempW; 
    h = tempH;
    on = false;
  }

  void display() {
    noStroke();
    pushStyle();
    if (isClicked(mouseX, mouseY) && mousePressed) {
      fill(255, 0, 0);
    } else {
      fill(0, 0, 255);
    }
    rect(x, y, w, h);
    popStyle();
  }

  boolean isClicked(float mousex, float mousey) {
    if (mousex > x && mousex < x + w && mousey > y && mousey < y + h) {
      return on = true;
    }
    return on = false;
  }
}