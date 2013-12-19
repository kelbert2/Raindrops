class Catcher {
  int d, i;
  PVector loc;
  PImage buck, buckaroo;
  int score = 0;
  Catcher(Raindrops[] rat) {
    loc = new PVector(mouseX, height - puddleheight); //- d - 5
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
    loc.set(mouseX, height-d-5); //catcher will keep up with mouse
  }
  void catchDrop(Raindrops drop) {
    stroke(40, 205, 205);
    textSize(20);
    textAlign(CENTER);
    text("Score: " + score, width-75, 50); //score will show
    if (loc.dist(drop.loc) < d/2 + d/2) {
      drop.loc.set(-width, height*10);
      drop.vel.set(0, 0);
      score+=1; //score will increase when catches a drop
    }
  }
}

