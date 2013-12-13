Catcher bucket = new Catcher();
int index = 1;
int amount = 5;
int oldTime;
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
  }
}
//void mousePressed() {
//  for (int i = 0; i < index; i++) {
//    drop[i].reset();
    //  }
    ////  if (millis() - oldTime == 5000) {
    ////    oldTime = millis();
    //if (index < drop.length) {
    //     index++;
    //    }


