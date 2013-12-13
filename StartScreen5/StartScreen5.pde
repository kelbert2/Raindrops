int amount = 10;
int trans, r, i;
PVector loc[] = new PVector[amount];
void setup() {
  size(700, 700);
  trans = 100;
  r = 1;
  for (i = 0; i < amount; i++) {
    loc[i] = new PVector(pmouseX, pmouseY);
  }
  //loc[i] = new PVector(width/2, height/2);
  //loc[i] = PVector.random2D();
}
void draw() {
  for (i = 0; i < amount; i++) {
    strokeWeight(50);
    noStroke();
    stroke(14, 25, 85, trans);
    noFill();
    ellipseMode(CENTER);
    ellipse(loc[i].x, loc[i].y, r, r);
    r++;
    if (trans > 0) { 
      trans-=5;
    } 
    if(trans == 0);
      trans = 80;
            r =1;
      loc[i] = new PVector(pmouseX, pmouseY);
      
    }
    //    if (trans == 60) {
    //      
    //      
    //    }
    //    if (r>=300) {
    //      r=1;
    //    }
  }
  noStroke();
  fill(0, 0, 255, 10);
  rect(0, 0, width, height);
}

