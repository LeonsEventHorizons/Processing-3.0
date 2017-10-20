class Catcher {

  float x, y, dia;

  Catcher() {
    dia = 50;
    x = width/2;
    y = height - dia;
  }

  void drawCatcher() {
    fill(255, 0, 0);
    noStroke();
    ellipseMode(CENTER);  
    x = mouseX;
    x = constrain(x, 0 + dia/2, width - dia/2);
    ellipse(x, y, dia, dia);
  }
}