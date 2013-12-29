class Winner {
  //   String p, w1, w2, w3, w4, w5, w6, w7, w8;
  //    int l;
  String p= "press any key twice to restart   press any key twice to restart   press any key twice to restart   ";
  String w1= "nice job";
  String w2= "you caught it";
  String w3= "yeah";
  String w4= "such fun";
  String w5= "partay now";
  String w6= "fun fun fun";
  String w7= "so magical";
  String w8= "best of times";
  int l = 0;
  Winner() {
  }
  void display() {
    textAlign(CORNER);
    textSize(10);
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

