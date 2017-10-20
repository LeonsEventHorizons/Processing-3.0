float dia = 50;
float circleX;
float circleY;
float rectX;
float rectY;
float rectDiaX;
float rectDiaY;

void setup()  {
 size(800, 400);
 background(0);
 smooth();
 stroke(255); 
 ellipseMode(CENTER);
 rectMode(CENTER);
 frameRate(30);
 rectX = width/2;
 rectY = height/2;
 rectDiaX = width - 40;
 rectDiaY = height - 40; 
 println("Length of screen width " + displayWidth); //1920
 println("Length of screen height " + displayHeight); //1080
}

void draw()  {
  
  //println(frameCount);
  fill(255, 0, 0);
  rect(rectX, rectY, rectDiaX, rectDiaY);
  fill(0, 255, 0);
  ellipse(width/2, height/2, 100, 100);
  
  
  fill(255);  
  //Four quarter circles
  ellipse(circleX + width/4, circleY + 100, dia, dia);
  ellipse(circleX + 3*width/4, circleY + 100, dia, dia);
  ellipse(circleX + width/4, circleY + 3*height/4, dia, dia);
  ellipse(circleX + 3*width/4, circleY + 3*height/4, dia, dia);
  
  //Three lines
  line(width/2, 0, width/2, height/2); 
  line(width/2, height/2, 0, height);
  line(width/2, height/2, width, height);
  
  
}