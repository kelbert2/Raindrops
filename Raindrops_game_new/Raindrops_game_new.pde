Catcher bucket = new Catcher();
int amount = 10;
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
  for (int i = 0; i < amount; i++) {
    drop[i].fall();
    drop[i].check(bucket);
  }
}

