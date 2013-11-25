Catcher bucket = new Catcher();
int amount = 10;
Raindrops[] drop = new Raindrops[amount];
void setup() {
  size(500, 500);
}
void draw() {
  background(150);
  bucket.display();
  drop[amount].display();
  drop[amount].fall();
  drop[amount].reset();
}

