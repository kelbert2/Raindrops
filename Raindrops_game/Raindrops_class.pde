class Raindrops {
  int index = 1;
  PVector loc, vel, acc;
  //  float[] size = new float[amount];
  float size;
  int i;
  int trans;

  Raindrops() {
    for ( i = 0; i < amount; i++) {
      loc = new PVector(random(-1*size, width+size), 0);
      //      loc = new PVector(random(-1*size[1], width+size[i]), random(0, -1* size[i]));
      vel = new PVector(0, random(.5));
      acc = new PVector(0, .008); 
      //      size[i] = random(10, 15);
      size = random(10, 15);
    }
  }
  void display() {
    noStroke();
    if (size>=14) {
      trans = 225;
    } 
    else if (size<14 && size>=12) {
      trans = 175;
    } 
    else {
      trans = 100;
    }
    fill(100, 200, 250, trans);
    //if get a raindrop image, can change the tint darker with this
    ellipse(loc.x, loc.y, size, size);
  }
  void fall() {
    //  for (i = 0; i < amount; i++) {
    loc.add(vel);
    vel.add(acc);
    //  }
  }
  void update() {
    size = random(10, 14);
    // to make not reappear, set v or acc to zero, loc off screen. otherwise will increase in difficulty as miss more.
    //    loc.set(random(-1*size, width+size), -1* size); //problem is that it will return to being slow
    loc.set(width*2, 0);
    vel.set(0, 0);
    acc.set(0, 0);
  }
  void reset() { //email about rising even when catch it.
    if (loc.y > height-puddle) { //the water level will rise when raindrops are missed
      print("drown   ");
      update();
      puddle+=size/3; //depend on size
      //  loc[i].x = random(width);
      //  loc[i].y = -2*size[1];
    }
    if (loc.x > width + size) { 
      loc.x = -2*size;
    }

    //    puddleheight = height+size-puddle;
  }

  void GameOver(Shark sharky) {
    if (puddle >= 150) {
      sharky.display();
      sharky.swim(); //shark will swim by when
      //    }
      //    if (keyPressed || mousePressed) {
      //      run = false;
    }
  }
  void check(Catcher cat) {

    if (loc.dist(cat.loc) < size/2 +cat.d/2) {
      update();
    }
  }
}

