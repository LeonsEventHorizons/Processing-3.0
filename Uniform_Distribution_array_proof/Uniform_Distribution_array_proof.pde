int[] array = new int[20];
int index = 0;
int counter = 0;

void setup() {
  size(400, 400);
  smooth(4);
}

void draw() {

  background(0);

  index = (int)(random(array.length));
  array[index] += 15;

  for (int i = 0; i < array.length; i++) {
    rect(i * 20 , 0, 20, array[i]); 
    
    //This was just my extra little bit
    if (array[i] > height) {
      array[index] = 0;
    }
  }
}