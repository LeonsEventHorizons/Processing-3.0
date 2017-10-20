//This example will help with the love TESTER!

int[] posX = new int[50];
int[] posY = new int[50];

void setup() {
  size(800, 800);
  smooth(4);
  background(255);
  ellipseMode(CENTER);
  frameRate(30);
  strokeWeight(1);    

  //Initialization
  for (int i = 0; i < posX.length; i++) {
    posX[i] = 0;
    posY[i] = 0;
  }
}

void draw() {
  background(255);

  //First loop of draw will take the first single mouse posX and posY
  //and place the element values at position 49 in each array index.
  //This updates the firstl element at the end of the array (49th index postion)
  //Create the head of the snake through each draw loop
  posX[posX.length - 1] = mouseX;
  posY[posY.length - 1] = mouseY;


  //Fill the arrays with 50 mouseX and mouseY locations updating and shifting
  //the element once each time through the DRAW loop, ending at the 
  //END of the array because [i + 1] using posX.length instead of posX.length - 1
  //would include the 49 + 1 (50 element space) which doesnt exist! So started filling
  // the END to the front of array. 
  for (int i = 0; i < posX.length - 1; i++) {
    posX[i] = posX[i + 1];
    posY[i] = posY[i + 1];
  }

  //Now use the history of mouse locations to draw a series of cirles
  for (int i = 0; i < posX.length; i++) {
    stroke(0); 
    fill(255 - i * 5);
    ellipse(posX[i], posY[i], i, i);
  }

}