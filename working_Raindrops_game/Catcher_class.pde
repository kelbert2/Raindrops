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
  void catchDrop(Raindrops drop){
    if (loc.dist(drop.loc) < d/2 + drop.d/2) {
      drop.loc.set(-width,height*10);
      drop.vel.set(0,0);
      score++;
    }
}

