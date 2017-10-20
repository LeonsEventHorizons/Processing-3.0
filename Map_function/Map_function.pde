//MAP functiom. When your reading values in some range and you want to map those
//values to some other functional range, for example, reading values from a sensor in 
//the range of 65 and 324 to the range of colours of 0 and 255. You can use MAP() one
//to map one range to the other. Keep in mind what order you want to map the range to.
// This is important when plugging in the argumetns for the map() function.
//In the above example, the sensor values are the value to be mapped to colour.
//So the value comes first in argument of the map() function.
//PAGE 245
//In the scenario I just described, the value is the sensor reading. The current min and max is the sensor’s
//range: 65 and 324. The new min and max is the range fill() expects: 0 and 255.

void setup() {
  size(800, 800);
  smooth(4);
  background(0);
  ellipseMode(CENTER);
  rectMode(CENTER);
}

void draw() {

  float r = map(mouseX, 0, width, 0, 255);
  float b = map(mouseY, 0, height, 0, 255); //Swap(invert) these last two arguments to have the blue when the mouse is at top instead of the bottom
  background(r, 0, b);
}  