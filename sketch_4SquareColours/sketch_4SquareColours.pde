

void setup() {
  size(400, 400);
  smooth(4);
  rectMode(CORNER);
}

void draw() {
  background(0);
  constrain(mouseX, 0, 400);
  constrain(mouseY, 0, 400);

  if (mouseX <= width/2 && mouseY <= height/2) {
    fill(255, 255, 0);
    rect(0, 0, width/2, height/2);
    
  } else if (mouseX > width/2 && mouseY < height/2) {
    fill(0, 255, 0);
    rect(width/2, 0, width/2, height/2);
    
  } else if (mouseX <= width/2 && mouseY >= height/2) {
    fill(0, 255, 255);
    rect(0, height/2, width/2, height/2);
    
  } else {  
    fill(255, 0, 255);
    rect(width/2, height/2, width/2, height/2);
  }
}