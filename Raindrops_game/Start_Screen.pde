class StartScreen {
  int trans, r, i;
  PVector loc[] = new PVector[amount];
  StartScreen() {
    trans = 100;
    r = 1;
    for (i = 0; i < amount; i++) {
      loc[i] = new PVector(mouseX, mouseY);
    }
    //loc[i] = new PVector(width/2, height/2);
    //loc[i] = PVector.random2D();
  }
  void display() {
    for (i = 0; i < amount; i++) {
      strokeWeight(30);
      noStroke();
      stroke(14, 25, 85, trans);
      noFill();
      ellipseMode(CENTER);
      ellipse(loc[i].x, loc[i].y, r, r);
      r++;
      if (trans > 0) { 
        trans--;
      }
      if (trans == 75) {
        trans = 100;
        loc[i] = new PVector(pmouseX, pmouseY);
      }
      if (r>=75) {
        r=1;
      }
    }
    noStroke();
    fill(0, 0, 255, 10);
    rect(0, 0, width, height);
    stroke(40, 205, 205);
    textSize(20);
    textAlign(CENTER);
    text("press any key to start", width/2, height/2);
  }
}

