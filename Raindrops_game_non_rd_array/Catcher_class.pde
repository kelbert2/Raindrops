class Catcher {
  int d, i;
  PVector loc;
  PImage buck, buckaroo;
   Catcher() {
    loc = new PVector(mouseX, height - d - 10);
    d = 50;
    buck = loadImage("tool-tip-bucket.jpg");
  }
  void display() {
    noStroke();
    fill(255);
    ellipse(loc.x, loc.y, d, d);
  }
  void update() {
    loc.set(mouseX, height-d-10);
  }
  void catchDrop(Raindrops drop) {
    image(buck, loc.x, loc.y);
    if (loc.dist(drop.loc[i]) < d/2 + drop[i].d/2) {
      drop.loc.set(-width, height*10);
      drop.vel.set(0,0);
      score++;
    }
  }
}
