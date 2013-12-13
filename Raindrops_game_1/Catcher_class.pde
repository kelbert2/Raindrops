class Catcher {
  int d = 50;
  PVector loc;
  Catcher() {
  }

  void display() {
    loc = new PVector(mouseX, height - d - 10);
    noStroke();
    fill(255);
    ellipse(loc.x, loc.y, d, d);
  }
}

