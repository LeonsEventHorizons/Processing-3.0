float randX, randY;
float dia;
float r, g, b, a;


void setup() {
  size(800, 800); 
  smooth();
  background(0);
  ellipseMode(CENTER);
  noStroke();
}

void draw() {  
  r = random(0, 255);
  g = random(0, 255);
  b = random(0, 255);
  a = random(255); //Same as above 0, 255

  dia = random(5, 75);

  randX = random(dia/2, width - dia/2) ; //Could simply do width here
  randY = random(dia/2, height - dia/2); //Could simply do height here
  
  fill(r, g, b, a);
  ellipse(randX, randY, dia, dia);
}