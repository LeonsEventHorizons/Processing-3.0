float x;
float y = 50;

float x2;
float y2;
float spacing = 25;

int rectX, rectY;
int w, h;

void setup() {
  size(400, 400);
  smooth(4);
  background(0);
  fill (255, 0, 0);
  frameRate(30);
  rectMode(CORNER); 

  x = 0;
  y = 0;

  x2 = 0;
  y2 = 0;
  
  rectX = 50;
  rectY = 50;
}

void draw() {  

  stroke(255);
  strokeWeight(1);

  while (x < width) {
    line(x, y, x, y + height);
    x = x + 80;
  }

  while (y2 < height) {
    line(x2, y2, x2 + width, y2);
    y2 += 80;
  }
  


  while(rectY < height)  {
    rect(rectX, rectY, w + 200, h + 50);
    rectY += 400 / 5;
  }








  //for (int x = 50; x < 150; x=10) {
  //  line(x, 80, x, 80+20);
  //}
}