class Winner {
  String p= "press any key twice to restart   press any key twice to restart   press any key twice to restart   ";
  String w1= "The drops of rain make a hole in the stone, not by violence, but by oft falling. - Lucretius";
  String w2= "you caught it like the plague";
  String w3= "hope you didn't schedule a parade";
  String w4= "drop it like it's wet";
  String w5= "drip drippity";
  String w6= "rain rain come to stay";
  String w7= "we all fall down";
  String w8= "i love how the rain can hide my tears";
  int l = 0;
  Winner() {
  }
  void display() {
    textAlign(CORNER);
    textSize(15);
    fill(random(255), random(50), random(50));
    text(w1, random(width), random(height));
    fill(random(150), random(100), random(100));
    text(w2, random(width), random(height));
    fill(random(50), random(150), random(150));
    text(w3, random(width), random(height));
    fill(random(150), random(150), random(150));
    text(w4, random(width), random(height));
    fill(random(50), random(255), random(50));
    text(w5, random(width), random(height));
    fill(random(50), random(50), random(255));
    text(w6, random(width), random(height));
    fill(random(100), random(255), random(100));
    text(w7, random(width), random(height));
    fill(random(100), random(100), random(255));
    text(w8, random(width), random(height));
    fill(255, 150, 200);
    textSize(30);
    text(p, l, height-50);
    l--;
    if (l<=-450) {
      l=10;
    }
  }
}

