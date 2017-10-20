float theta = radians(0); 
float magnitude = 200;

void setup() {
  size(800, 800);
  smooth(4);
  background(0);
  ellipseMode(CENTER);
  rectMode(CENTER);
  noStroke();
}

void draw() {

  //This is essentially converting polar cordinates to cartesian
  //It actually is but it may be a bit hard to see becasue x is the subject
  //Basic trig.
  //The x and y here indicate the distance away from the center of circle
  //You got this Leon before its quite easy to understand. Maybe think back to whats happening
  //when you manually convert polar to cartesian coordinates on paper.
  float x = magnitude * cos(theta);
  float y = magnitude * sin(theta);
  ellipse(x + width/2, y + height/2 , 16, 16); 
  
  //Becasue this is in radians. Must be a small incrememnt. Simply doing theta++
  //works but the spacing is so great its revolving around the circle so much that
  //its creating what LOOKS like spacing
  theta += 0.01; 
}