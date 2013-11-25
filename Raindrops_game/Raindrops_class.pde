class Raindrops {
  PVector[] loc = new PVector[amount];
  PVector[] vel = new PVector[amount];
  PVector[] acc = new PVector[amount];
  float[] size = new float[amount];
  int i;

  void display(int r, int g, int b) {
    for ( i = 0; i < amount; i++) {
      loc[i] = new PVector(random(-1*size[1], width+size[i]), random(0, -1* size[i]));
      vel[i] = new PVector(0, random(.5));
      acc[i] = new PVector(0, .002);
      size[i] = random(10, 15);
    }
  }
  void fall() {
    for ( i = 0; i < amount; i++) {
      fill(0, 250, 250);
      ellipse(loc[i].x, loc[i].y, size[i], size[i]);
      loc[i].add(vel[i]);
      vel[i].add(acc[i]);
    }
  }
  void reset() {
    for   ( int i = 0; i < amount; i++) {
      if (loc[i].y > height+size[i]) {
        size[i] = random(10, 50);
        loc[i].x = random(width);
        loc[i].y = -2*size[1];
      }
      if (loc[i].x > width + size[i]) {
        size[i] = random(10, 50);
        loc[i].x = -2*size[1];
      }
    }
  }
}

