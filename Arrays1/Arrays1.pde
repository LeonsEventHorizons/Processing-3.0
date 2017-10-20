//****BIG IDEA WITH ARRAYS AND BASIC STANDARD PRACTICE****//
//Declare an array and its size
//Not initialised. HAS NO DATA IN IT YET
float[] myFloats = new float[100];

void setup() {
  size(800, 800);
  smooth(4);
  background(255);
  ellipseMode(CENTER);
  frameRate(30);
  strokeWeight(1);    

  //****BIG IDEA WITH ARRAYS AND BASIC STANDARD PRACTICE****
  //Initialise the array by ADDING DATA(elements) to it
  for (int i = 0; i < myFloats.length; i++) {
    myFloats[i] = random(0, 101);
  }

  //****BIG IDEA WITH ARRAYS AND BASIC STANDARD PRACTICE****
  //Whenever you want to read the data you must make another
  //loop to iterate over the elements.
  for (int i = 0; i < myFloats.length; i++) {
    println(myFloats[i]);
  }

  //NOW JUST SOME PRACTICE WITH ARRAYS
  int[] nums = {5, 4, 2, 7, 6, 8, 5, 2, 8, 14};
  //REMEMBER ARRAYS HERE ARE MUTABLE. The above array will be ALTERED!!!!
  //Changed after each of the FOR LOOPS.

  //Double each number in the array
  for (int i = 0; i <nums.length; i++) {
    nums[i] = nums[i] + nums[i];
    println(nums[i]);
  }

  //Square each number in the array
  for (int i = 0; i <nums.length; i++) {
    nums[i] = nums[i] * nums[i];
    println(nums[i]);
  }

  //Add a random number between zero and 10 to EACH NUMBER
  //Take note here Leon it doesn;t add ALL numbers, simply
  //adding a random number TO each number in array, as the other above TWO examples
  //If you want to ADD(sum) all numbers you nreed to create a new VARIABLE.
  for (int i = 0; i < nums.length; i++) {
    nums[i] += (int)(random(0, 10));  
    nums[i] += nums[i];
    println(nums[i]);
  }

  //Add to each number the number that follows in the array. Skip the last
  //value in the array
  for (int i = 0; i < nums.length - 2; i++) {
    nums[i] += nums[i + 1]; //Remember you can do all sorts of calculatiopsn here as long as it results in an INTEGER
    println(nums[i]);
  }

  //Simply ADD ALL numbers in the array
  int sum = 0;
  for (int i = 0; i < nums.length; i++) {
    sum += nums[i];
  }
  println("The total sum is: " +sum);
}

void draw() {
}