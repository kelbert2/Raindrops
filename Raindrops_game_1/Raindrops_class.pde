class Raindrops {
  int index = 1;
  PVector[] loc = new PVector[amount];
  PVector[] vel = new PVector[amount];
  PVector[] acc = new PVector[amount];
  float[] size = new float[amount];
  int i;
  int trans;
  Raindrops() {
    for ( i = 0; i < amount; i++) {
      loc[i] = new PVector(random(-1*size[1], width+size[i]), random(0, -1* size[i]));
      vel[i] = new PVector(0, random(.5));
      acc[i] = new PVector(0, .002);
      size[i] = random(10, 15);
    }
  }
  void display() {
    for ( i = 0; i < amount; i++) {
      noStroke();
      if (size[i]>=14) {
        trans = 225;
      } 
      else if (size[i]<14 && size[i]>=12) {
        trans = 175;
      } 
      else {
        trans = 100;
      }
      fill(100, 200, 250, trans);
      //if get a raindrop image, can change the tint darker with this
      ellipse(loc[i].x, loc[i].y, size[i], size[i]);
    }
  }
  void fall() {
    for (i = 0; i < amount; i++) {
      loc[i].add(vel[i]);
      vel[i].add(acc[i]);
    }
  }
  void update() {
    size[i] = random(10, 14);
    loc[i].set(random(-1*size[i], width+size[i]), -1* size[i]);
  }
  void reset() {
    for (i = 0; i < amount; i++) {
      if (loc[i].y > height+size[i]) {
        update();
        //  loc[i].x = random(width);
        //  loc[i].y = -2*size[1];
      }
      if (loc[i].x > width + size[i]) {
        loc[i].x = -2*size[1];
      }
    }
  }
  void check(Catcher cat) {
    for (i = 0; i < amount; i++) {

      if (loc[i].dist(cat.loc) < size[i]/2 +cat.d/2) {
        update();
      }
    }
  }
}



