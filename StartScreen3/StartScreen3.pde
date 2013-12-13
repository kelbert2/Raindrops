int amount = 10;
int trans, r, i;
PVector loc[] = new PVector[amount];
void setup() {
  size(700, 700);
  trans = 100;
  r = 1;
  loc[i] = new PVector(width/2, height/2);
}
void draw() {
  //background(150);

  for (i = 0; i < amount; i++) {

    strokeWeight(10);
    noStroke();
    stroke(14, 25, 85, trans);
    ellipseMode(CENTER);
    ellipse(loc[i].x, loc[i].y, r, r);
    r++;
    if (r >= 50 && trans > 0) { 
      trans--;
    }
    if (trans == 75) {
      trans = 100;
      loc[i] = new PVector(pmouseX, pmouseY);
    }
    if (r>=100) {
      r = 1;
    }
  }
  noStroke();
  fill(0, 0, 255, 10);
  rect(0, 0, width, height);
}

