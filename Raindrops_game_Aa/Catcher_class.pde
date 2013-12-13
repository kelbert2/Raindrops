class Catcher {
  int d, i;
  PVector loc;
  PImage buck, buckaroo;
  int score = 0;
  Catcher() {
    loc = new PVector(mouseX, height - d - 5);
    d = 50;
    buck = loadImage("tool-tip-bucket.png");
  }
  void display() {
    noStroke();
    noFill(); //so ellipse will catch the drop but image will show in location of
    ellipse(loc.x, loc.y, d, d);
    imageMode(CENTER);
    image(buck, loc.x, loc.y-20, 75, 75); //so drop won't stop before handle
  }
  void update() {
    loc.set(mouseX, height-d-5);
  }
  void catchDrop(Raindrops drop, Timer time) {
    text("Score: " + score, width-75, 50);
    if (loc.dist(drop.loc) < d/2 + d/2) {
      drop.loc.set(-width, height*10);
      drop.vel.set(0, 0);
      score+=1;
    }
  }
}

