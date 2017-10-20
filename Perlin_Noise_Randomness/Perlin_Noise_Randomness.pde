//By now, you may have noticed that noise() always returns a floating point value between 0 and 1. This
//detail cannot be overlooked, as it affects how you use Perlin noise in a Processing sketch. Example 13-4

float time = 0.0;      // Usually will always start at 0.0
float increment = 0.01; //Controls amount of noise (spacing movement)

void setup() {
  size(600, 600);
  smooth(4);
  background(255);
}

void draw() {

  background(255);

  //Noise always returns a num between 0 and 1, so multiply it by width, 
  //Or some other number to scale it and make it useful.
  float noiseValue = noise(time) * width;

  stroke(255, 0, 0);
  fill(0);
  ellipse(width/2, height/2, noiseValue, noiseValue);

  stroke(0);

  time += increment;
}