Catcher bucket;
Shark fish;
int index = 1;
int amount = 5;
int oldTime;
int score = 0;
int waitTime;
int level = 0;
Raindrops[] drop = new Raindrops[amount];
Timer time;
void setup() {
  size(500, 500);
  for   ( int i = 0; i < amount; i++) {
    drop[i] = new Raindrops();
  }
  bucket = new Catcher();
  fish = new Shark();
  time = new Timer();
}
void draw() {
  if (millis()>100) {
    level+=1;
  }
//  if (level == 0) {
//    background(0);
//    for (int i=0; i<circles.size(); i++) {
//      ExpandingCircle ec = (ExpandingCircle) circles.get(i);
//      ec.update();
//      ec.display();
//    }
//  }
  else {
    waitTime = 5;
    if (millis()%waitTime == 0) {
      for (int i = 0; i < index; i++) {
        drop[i].fall();
      }
    }
    for (int i = 0; i < index; i++) {
      drop[i].display();

      drop[i].check(bucket);
      bucket.catchDrop(drop[i]);
    }
    bucket.display();
    bucket.update();
    fish.display();
    fish.swim();
    time.display();
    for (int i = 0; i < index; i++) {
      drop[i].reset();
    }
    if (millis() - oldTime == 5000) {
      oldTime = millis();
      if (index < drop.length) {
        index++;
      }
    }
  }
}

