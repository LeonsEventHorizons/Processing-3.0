//This sketch is exactly the same concept as "ProperDirection" and "ProperDirection2" except
//instead of using a speed variable for X here we have a couple of colour (RgB) variables with
//matching changeR and changeB variables. Exactly the same conecpt except where using colour
//variations, not speed to move a ball

float x, y;
float w, h;

float r;
float g;
float b;

float changeR;
float changeB;

void setup() {
  size(800, 300);
  smooth(4);
  background(0);
  noStroke();
  fill (255, 0, 0);
  frameRate(30);
  rectMode(CENTER);

  w = 100;
  h = 200;
  x = width/2;
  y = height/2;
  
  //Initially starting at black colour
  changeR = 5;
  changeB = 5;
}

void draw() {
  background(0);


  fill(r, 0, b);
  rect(x, y, w, h);

  r = r + changeR;
  b = b + changeB;

  if (r > 255 || r < 0) {
    changeR = changeR * -1;
    //Remember this be simply be written changeR *= -1
  }  

  if (b > 255 || b < 0) {
    changeB = changeB * -1;
    //Remember this be simply be written changeB *= -1
  }
}