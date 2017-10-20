float x, y;
float dia;
float speedX;
float speedY;

void setup() {
  size(800, 300);
  smooth(4);
  background(0);
  noStroke();
  fill (255, 0, 0);
  frameRate(30);

  dia = 50;
  x = 0 + dia/2;
  y = height/2;  
  //A speed for X and Y (1 ball each)
  speedX = 10;
  speedY = 5;
}

void draw() {
  background(0);

  move();
  ellipse(x, y, dia, dia);
}

void move() {

  //Simply to get the ball rolling. Don't touch X again
  x = x + speedX;
  y = y + speedY;

  //Now lets control the direction when ball hits a side(s)
  //Simply ALWAYS just multiply by negative -1. Don't need to worry
  //about positive or negative directions. Much better than 
  // speed = speed + 1 and speed = speed - 1.
  if (x > width - dia/2 || x < 0 + dia/2) {
    speedX = speedX * -1;
  }

  if (y > height - dia/2 || y < 0 + dia/2) {
    speedY = speedY * -1;
  }
  //Thats it! Much easier than my old way
}