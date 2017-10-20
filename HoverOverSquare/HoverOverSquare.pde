int x = 50;
int y = 50;
int w = 100;
int h = 75;

void setup() {
  size(200, 200);
  smooth(4);
  background(0);
  noStroke();
}

void draw() {
  background(0);  
  
  if (mouseX > 50 && mouseY > 50 && mouseX < 100 + 50 && mouseY < 75 + 50)  {
    fill(255, 0, 0);    
  }
  else  {
    fill(0, 0, 255);
  }
  rect(x, y, w, h);
}