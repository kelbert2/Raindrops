int trans, r;
void setup() {
  size(700, 700);
  trans = 100;
  r = 1;
}
void draw() {
  //background(150);
  strokeWeight(10);
  //stroke();
  fill(14, 25, 85, trans);

  ellipseMode(CENTER);
  ellipse(pmouseX, pmouseY, r, r);
  r++;
  if (r >= 50 && trans > 0) { 
    trans--;
  }
  if (trans == 0) {
    r = 1;
    trans = 100;
  }
  noStroke();
  fill(255,10);
  rect(0,0,width,height);
}

