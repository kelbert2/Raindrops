void setup(){
  size(700,700);
}
void draw(){
beginShape();
//noStroke();
int scale=1;
int bigx=250;
int bigy=250;
int mouthx=bigx-75*scale;
int mouthy=bigy;
int tailx;
int taily;
ellipse(bigx, bigy, 200,80);
arc(bigx-75, bigy+10,150,115,PI,PI+HALF_PI);
arc(mouthx, mouthy,125,100,HALF_PI,PI);
rect(bigx-75,bigy-50,75,80);
endShape();
}
