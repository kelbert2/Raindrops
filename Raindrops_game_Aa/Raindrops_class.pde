class Raindrops {
  int index = 1;
  PVector loc, vel, acc;
  float[] size = new float[amount];
  int i;
  int trans;

  float puddle = 0;
  Raindrops() {
    for ( i = 0; i < amount; i++) {
      loc = new PVector(random(-1*size[1], width+size[i]), random(0, -1* size[i]));
      vel = new PVector(0, random(.5));
      acc = new PVector(0, .008); 
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
      ellipse(loc.x, loc.y, size[i], size[i]);
    }
  }
  void fall() {
    //  for (i = 0; i < amount; i++) {
    loc.add(vel);
    vel.add(acc);
    //  }
  }
  void update() {
    size[i] = random(10, 14);
    loc.set(random(-1*size[i], width+size[i]), -1* size[i]); //problem is that it will return to being slow
  }
  void reset() {
    for (i = 0; i < amount; i++) {
      if (loc.y > puddleheight) { //the water level will rise when raindrops are missed
        update();
        puddle+=5;
        //  loc[i].x = random(width);
        //  loc[i].y = -2*size[1];
      }
      if (loc.x > width + size[i]) { 
        loc.x = -2*size[1];
      }
      for   ( int i = 0; i < amount; i++) {
        puddleheight = height+size[i]-puddle;
      }
      noStroke();
      fill(100, 200, 250, 20); //bucket and shark will show through
      rect(0, height-puddle, width, puddle);  //Working: why there are multiple rectangles rising at diff rates, but I like the way it looks, so let's pretend it's intentional
      //reset
      if (puddle == height) {
        puddle = 0;
      }
    }
  }
  void GameOver(Shark sharky) {
    if (puddle >= 150) {
      sharky.display();
      sharky.swim(); //shark will swim by when 
    }
  }
  void check(Catcher cat) {
    for (i = 0; i < amount; i++) {
      if (loc.dist(cat.loc) < size[i]/2 +cat.d/2) {
        update();
      }
    }
  }
}

