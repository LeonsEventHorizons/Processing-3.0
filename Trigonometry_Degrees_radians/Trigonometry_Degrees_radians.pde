//This lesson shows how you can convert degrees to radians. Processing works
//by using radians but the degree to radians function makes it easier if you
//prefer working in degrees.

//Simply converts 45 degrees to radians
//Remember Processing works with radians not degrees but you cal always think
//degrees and just always convert before use
//This is the modulas or simply the angle from the origon
float theta = radians(55); 

float m = 400; //(magnitude or radius)

void setup() {
  size(800, 800);
  smooth(4);
  background(0);
  ellipseMode(CENTER);
  rectMode(CENTER);
  stroke(255);
  strokeWeight(6);

  //Think polar coordiantes. If your given magnitude 75 (radius), and 
  //modulas (degree) of 45 degrees, you can get the x and y values (the two 
  //lines that make up the right angle of a triangle with the below equations
  //This is really just the cos and sin to find the unknown x and y sides of
  //a traingle but x and y need to be the subjet so just multiply the m from 
  //the division from the left hand side. This is just working out the length of the
  //sides of the right angle triangle given the konown MAGNITUDE(radius length)
  //and MODULAS(angle from origon).
  //the 
  float x = m * cos(theta);
  float y = m * sin(theta);

  println("X length is: " + x + " Y length is: " + y);
  line(0, 0, x, y);
}

void draw() {
}