Car myCar;
Car myCar2;

void setup() {
  size(800, 800);
  smooth(4);
  background(255);
  ellipseMode(CENTER);
  frameRate(30);
  strokeWeight(1);  
  
// The constructor’s arguments are just temporary, and exist solely to pass
// a value from where the object is made into the object itself.
  myCar = new Car(width/2, height/2, 150, 50, 5);
  myCar2 = new Car(width/3, height/4, 150, 50, -2);
}

void draw()  {
  background(255);  
  
  myCar.display();
  myCar.move();  
  myCar.collide(myCar2);
  
  myCar2.display();
  myCar2.move();
  
}