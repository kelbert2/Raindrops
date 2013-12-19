Catcher bucket = new Catcher();
Shark fish = new Shark();
int index = 1;
int amount = 5;
int oldTime;
int score = 0;
Raindrops[] drop = new Raindrops[amount];
void setup() {
  size(500, 500);
  for   ( int i = 0; i < amount; i++) {
    drop[i] = new Raindrops();
  }
}
void draw() {
  background(150);
  bucket.display();
  for (int i = 0; i < index; i++) {
    drop[i].display();
    drop[i].fall();
    drop[i].check(bucket);
    text(score, width - 20, 50);
    bucket.catchDrop(drop[i]);
  }
  fish.display();
  fish.swim();
}
void mousePressed() {  
  for (int i = 0; i < index; i++) {
    // drop[i].reset();
  }
  if (millis() - oldTime == 5000) {
    oldTime = millis();
    if (index < drop.length) {
      index++;
    }
  }
}


