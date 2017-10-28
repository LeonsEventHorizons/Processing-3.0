int cols = 3;
int rows = 3;

Cell[][] board = new Cell[cols][rows];

void setup() {
  size(600, 600);
  background(0);
  smooth(2);

  int w = width / cols;
  int h = height / rows;

  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      board[i][j] = new Cell(i * w, j * h, w, h);
    }
  }
}

void draw() {
  background(255);
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j ++) {
      board[i][j].display();
    }
  }
}

void mousePressed() {
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {   
      board[i][j].click(mouseX, mouseY);
    }
  }
}


// A Cell object
class Cell {
  float x, y;
  float w, h;
  int state;

  // Cell Constructor
  Cell(float tempX, float tempY, float tempW, float tempH) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    state = 0;
  }

  void click(int mx, int my) {
    if (mx > x && mx < x + w && my > y && my < y + h) {
      
      //A shorter better way is to use modulo if you wanted
      //This wil simply go from 0, 1, 2 then back to zero when it hits 3
      //becasue mod 3 is zero
      // state = (state + 1) % 3
      state = state + 1;
      if (state > 2) {
        state = 0;
      }
      println(state);
    }
  }

  void display() {
    stroke(0);
    strokeWeight(4);
    noFill();
    rect(x, y, w, h);

    stroke(255, 0, 0);
    strokeWeight(4);
    if (state == 0) {
    } else if (state == 1) {
      ellipse(x + w/2, y + h/2, w, h);
    } else if (state == 2) {
      line(x, y, x+w, y+h);
      line(x+w, y, x, y+h);
    }
  }
}