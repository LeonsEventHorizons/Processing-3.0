//RECURSION

void setup() {
  size(1000, 900);
  smooth(4);
  background(0);  
  stroke(255);
  noFill();
  strokeWeight(1);

  factorial(5);
}

void draw() {
  drawCircle(width/2, 0 + 250, 300);
  drawConcentricCircles(width/2, height/2, 800);
  drawConcentricCircles(width/2, height/2, 800);
}

int factorial(int num) {
  if (num == 1) {
    return num;
  }
  println("First: " +num);
  return num * factorial(num - 1);
}

void drawCircle(int x, int y, float radius) {
  ellipse(x, y, radius, radius);
  if (radius > 2) {
    radius *= 0.75;
    drawCircle(x, y, radius);
  }
}

//Notice here there is no return statement. Just void.
void drawConcentricCircles(float x, float y, float radius) {

  ellipse(x, y, radius, radius);
  if (radius > 16) {
    drawConcentricCircles(x + radius/2, y, radius/2);
    drawConcentricCircles(x - radius/2, y, radius/2);
    //Un comment to add the same pattern running along y axis
    //drawConcentricCircles(x, y + radius/2, radius/2);
    //drawConcentricCircles(x, y - radius/2, radius/2);
  }
}