class Catcher {
  int cr = 50;
  float[] size;
  PVector[] loc;
  Catcher(){
  }

  void display() {
    noStroke();
    fill(255);
    ellipse(mouseX, height - cr - 10, cr, cr);
  }
}

