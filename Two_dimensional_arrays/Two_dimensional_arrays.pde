//Two dimensional arrays

int[][] array = { {0, 1, 2, 3}, 
  {3, 2, 1, 0}, 
  {3, 5, 6, 1}, 
  {3, 8, 3, 4} };

int rows = 400;
int cols = 400;
int[][] array2 = new int[cols][rows];

void setup() {
  size(400, 400);
  smooth(4);

  //Need two indices to identify a SINGLE element
  //To access an individual element of a two-dimensional array, 
  //you need two indices. The first specifies
  //which array is the array of arrays and the second specifies which 
  //element of that array. Thus array[2][1] is 5
  print(array[2][1]);

  for (int i = 0; i < array2.length; i++) { 
    for (int j = 0; j < array2.length; j++) {
      array2[i][j] = (int)random(0, 255);
    }
  }
}

void draw() {

  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      stroke(array2[i][j], 0, 0);
      point(i, j);
    }
  }
}