Mover [] dots;
void setup() {
  size(400,400);
  dots = new Mover[200];
  for (int i = 0; i < dots.length; i++)
  {
    dots[i] = new Mover();
  }
}
void draw() {
  background(255);
  for (int i = 0; i < dots.length; i++) {
    dots[i].move();
    dots[i].show();
  }
}
class Mover {
  int x, y, c;
  Mover() {
    x = 200;
    y = 200;
    c = color(((int)(Math.random()*200)+50),((int)(Math.random()*200)+50),((int)(Math.random()*200)+50));
  }
  void move() {
    x = x + (int)(Math.random()*7)-3;
    y = y + (int)(Math.random()*7)-3;
  }
  void show() {
    noStroke();
    fill(c,170);
    ellipse(x, y, 30, 30);
    fill(0);
    ellipse(x-6,y-3,5,5);
    ellipse(x+6,y-3,5,5);
    stroke(0);
    line(x+7,y+5,x-7,y+5);
  }
}
