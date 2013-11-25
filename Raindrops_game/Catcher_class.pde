class Catcher {
  int cr = 50;
  Catcher(){
  }

  void display() {
    noStroke();
    ellipse(mouseX, height- cr - 10, cr, cr);
  }
}

