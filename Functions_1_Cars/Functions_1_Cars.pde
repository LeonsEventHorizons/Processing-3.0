//This sketch shows the proper use of a function using an offset
//It also shows that ALL PRIMITIVE valued arguments when passed to
//functions are COPIED, not directly passed. ("pass by value" is technically wrong wording here but this is whats its called,
//however, it would be more correct to say "PASSED BY COPY"!). 
//Remember this is for all primitive types, objects are different

float x = 57;

void setup() {
  size(500, 500);
  smooth(4);
  background(255);
  ellipseMode(CENTER);
  frameRate(30);
  strokeWeight(1);

  println(x); //x is 57
  randomizer(x);
  print(x); 
  // Of course the global varialbe x here is the same after the function call
  // becasue primitive arguments are always passed as a copy. Simple. x still is 57  
  
  //Just checking I remember the distance formula
  float distance1 = distance(2,3,7,9);
  println("This is the distacne " +distance1);
  //Using the Processing library "dist" method to check my answer
  println(dist(2,3,7,9));
}

void draw() {  

  drawCar(width/2, height/2, 100, color(255, 0, 0));
  drawCar(width/4, height/3, 50, color(255, 255, 0));
  drawCar(2*width/3, 3*height/4, 180, color(255, 0, 255));
  drawCar(width - 100, height/4 - 40, 120, color(0, 0, 0));
}

//Remember arguments are passed as COPIES of the argument!
//This means a COPY of the argument is passed to the fucntion - 
//not the value itself
void drawCar(int x, int y, int size, color c) {
  int offset = size/4;
  rectMode(CENTER);
  stroke(0);
  fill(c);
  rect(x, y, size, size/2); //body

  fill(200);
  rect(x - offset, y - offset, offset, offset/2); //top left wheel
  rect(x + offset, y - offset, offset, offset/2); //top right wheel
  rect(x - offset, y + offset, offset, offset/2); //bottom left wheel
  rect(x + offset, y + offset, offset, offset/2); //top left wheel
}

//The comment of copying arguments is demopnstarted when you call this function
//from main. A COPY of 
void randomizer(float num) {  
  float randomNum =random(-2, 2);
  println(randomNum + num);
}

//Just checking I remember the distance formula
float distance(float x1, float y1, float x2, float y2)  {
  float differenceX = (x1 - x2);
  float differenceY = (y1 - y2);
  float distance = sqrt(sq(differenceX) + sq(differenceY));
  return distance;  
}