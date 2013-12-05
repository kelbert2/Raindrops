class Raindrops {
  PVector[] loc = new PVector[amount];
  PVector[] vel = new PVector[amount];
  PVector[] acc = new PVector[amount];
  float[] size = new float[amount];
  int i;
  Raindrops() {
    for ( i = 0; i < amount; i++) {
      loc[i] = new PVector(random(-1*size[1], width+size[i]), random(0, -1* size[i]));
      vel[i] = new PVector(0, random(.5));
      acc[i] = new PVector(0, .002);
      size[i] = random(10,14);
    }
  }
  void fall() {
    for ( i = 0; i < amount; i++) {
      noStroke();
      fill(100, 200, 250);
      ellipse(loc[i].x, loc[i].y, size[i], size[i]);
      loc[i].add(vel[i]);
      vel[i].add(acc[i]);
    }
  }
  void update() {
    size[i] = random(10,14);
      loc[i] = new PVector(random(-1*size[i], width+size[i]), -1* size[i]);
  }
  void check(Catcher cat) {
    for   (i = 0; i < amount; i++) {
      if (loc[i].y > height+size[i]) {
        update();
//        loc[i].x = random(width);
//        loc[i].y = -2*size[1];
      }
      if (loc[i].x > width + size[i]) {
        
        loc[i].x = -2*size[1];
      }
      if (loc.dist(cat.loc) < size[i]/2 +cat.d/2){
        update();
      }
    }
  }
  
}

