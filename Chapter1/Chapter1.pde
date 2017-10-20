
void setup() {
  //size(600, 600);
  fullScreen();
  background(0);
  smooth();
  stroke(255);
  strokeWeight(2);  
  ellipseMode(CENTER);
  rectMode(CENTER);  
  frameRate(30);
}

void draw() {  
  background(0);  

  float x1 = mouseX - width/2;
  float y1 = mouseY - height/2;  

  pushMatrix();
  translate(width/2, height/2);

  //Body
  fill(255 / 2);
  rect(x1, y1 - 55, 40, 100);

  //Head
  fill(255);
  ellipse(0 + x1, 0 - 150 + y1, 100, 100);

  //Mouth
  fill(255, 0, 0);
  arc(0, 0 - 120, 30, 25, -0.8, PI+QUARTER_PI, PIE);

  //Eyes
  fill(mouseX, 0, mouseY);
  ellipse(-30, 0 - 150, 20, 50);
  ellipse(30, 0 - 150, 20, 50);

  //Legs
  line(-20 + x1, -5 + y1, -50 + x1, 30 + y1);
  line(20 + x1, -5 + y1, 50 + x1, 30 + y1);
  popMatrix();
}

void mousePressed() {
  println("Take me to your leader Take me to your leader Take me to your leader");
}






//Instead of using push and pop matrix 
//float mX = mouseX - width/2;
//float mY = mouseY - height/2;