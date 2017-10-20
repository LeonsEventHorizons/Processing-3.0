int cols = 40;
int rows = 40;
Cells[][] cells = new Cells[cols][rows];

void setup() {
  size(400, 400);
  smooth(4);

  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      cells[i][j] = new Cells(i * 10, j * 10, 10, 10, i+j);
    }
  }
}

void draw() {
  background(0);

  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      cells[i][j].occilate();
      cells[i][j].display();
    }
  }
}

class Cells {
  
  float x, y, w, h, angle;

  Cells(float _x, float _y, float _w, float _h, float _angle) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    angle = _angle;
  }

  void occilate() {
    angle += 0.02;
  }

  void display() {

    float f = map(sin(angle), -1, 1, 0, 255);
    fill(f);
    rect(x, y, w, h);
  }
}