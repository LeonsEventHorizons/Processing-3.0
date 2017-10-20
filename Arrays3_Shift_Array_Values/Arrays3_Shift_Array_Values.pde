int[] array = {1, 2, 3, 4, 5, 6, 7, 8, 9};

void setup() {  

  for (int j = 0; j < array.length; j++) {
    print(array[j] + ", ");
  }

  println();
  //point for love tester gam here. Remeber this just SHIFTS the values
  //It's not doing any calculations (addition)
  int temp = array[0]; //takes the first value in array
  for (int j = 0; j < array.length - 1; j++) {
    array[j] = array[j + 1];
  }
  
  //This simply appends the temp value to end of array
  array[array.length - 1] = temp;
  
  for (int i = 0; i < array.length; i++)  {
    print(array[i] +", ");
  }




}