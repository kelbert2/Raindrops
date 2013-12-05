class Catcher {
  int d = 50;
  PVector loc;
  Catcher(){
  }

  void display() {
    noStroke();
    fill(255);
    ellipse(mouseX, height- d - 10, d, d);
  }
}

