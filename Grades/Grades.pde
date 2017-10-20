float studentMark;

void setup() {
  size(400, 400);
  smooth(4);
  background(0);
  noStroke();
  studentMark = 84;
}

void draw() {

  calculateMark(studentMark);  
  noLoop();
}

void calculateMark(float mark) {

  if (mark > 100 || mark < 0) {
    println("YOU ENTERED A INVALID NUMBER");
  }

  if (mark >= 95 && mark <= 100) {
    println("You are a genus!!!! " + mark + "%");
    
  } else if (mark < 95 && mark >= 85) {
    println("HIGH DISTINCTION!! " + mark + "%");
    
  } else if (mark < 85 && mark >= 75) {
    println("CREDIT! " + mark + "%");
    
  } else if (mark < 75 && mark >= 50) {
    println("PASS! " + mark + "%");
    
  } else {
    println("FAIL! " + mark + "%");
  }
}