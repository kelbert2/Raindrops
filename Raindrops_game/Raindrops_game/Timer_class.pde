class Timer {
  Timer() {
  }
  void display() {
    stroke(40, 205, 205);
    textSize(20);
    textAlign(CENTER);
    text("Time: " + millis(), 75, 50);
  }
}

