//RECURSION EXCERCISE

void setup() {
  size(1600, 800);
  smooth(4);
}

void draw() {
  background(0);  
  stroke(255);
  branch(width/2, height, 400);
}

void branch(float x, float y, float h)  {
  //Initial positions of lines
 line(x, y, x - h, y - h);  
 line(x, y, x + h, y - h); 
 if (h > 1)  {
   //Now the recursive call pattern
   branch(x - h, y - h, h/2);
   branch(x + h, y - h, h/2);
 }
}