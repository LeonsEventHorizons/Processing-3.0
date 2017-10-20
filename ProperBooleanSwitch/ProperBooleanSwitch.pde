boolean on = false;
void setup() {
  size(800, 400);
  smooth(4);
  background(0);  
  noStroke();
  rectMode(CENTER);
}


void draw() {

  if (on == false) {
    fill(255, 0, 0);
  } else {
    fill(0, 0, 255);
  }
  rect(width/2, height/2, 50, 50);
}

void mousePressed() {
  if (mouseX > width/2 - 25 && mouseY > height/2 - 25 && mouseX < width/2 + 25 && mouseY < height/2 + 25) {
    on = !on;
  }
}