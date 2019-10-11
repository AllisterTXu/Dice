void setup()
{
  background(128);
  size(1000, 1000);
  noLoop();
}
void draw()
{
  int dots = 0;
  for (int x = 0; x < 300; x += 10) {
    for (int y = 0; y < 300; y += 10) {
      Die square = new Die(x*5, y*5);
      square.show();
      square.roll();
      dots += square.roll;
    }
  }
  fill(255);
  rect(0, 900, 1000, 200);
  fill(0);
  textSize(24);
  text("Sum of all rolls: " + dots, 100, 950);
}

void mousePressed()
{
  redraw();
}

class Die //models one single dice cube
{
  int roll, myX, myY;

  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    roll = (int)(Math.random()*6+1);
  }
  void roll()
  {
    fill(0);
    if (roll == 1) {
      ellipse(myX+20, myY + 20, 10, 10);
    }
    if (roll == 2) {
      ellipse(myX+5, myY + 35, 10, 10);
      ellipse(myX+35, myY + 5, 10, 10);
    }
    if (roll == 3) {
      ellipse(myX+5, myY + 35, 10, 10);
      ellipse(myX+20, myY + 20, 10, 10);
      ellipse(myX+35, myY + 5, 10, 10);
    }
    if (roll == 4) {
      ellipse(myX+5, myY + 5, 10, 10);
      ellipse(myX+35, myY + 5, 10, 10);
      ellipse(myX+5, myY + 35, 10, 10);
      ellipse(myX+35, myY + 35, 10, 10);
    }
    if (roll == 5) {
      ellipse(myX+5, myY + 5, 10, 10);
      ellipse(myX+35, myY + 5, 10, 10);
      ellipse(myX+5, myY + 35, 10, 10);
      ellipse(myX+35, myY + 35, 10, 10);
      ellipse(myX+20, myY + 20, 10, 10);
    }
    if (roll == 6) { 
      ellipse(myX+5, myY + 5, 10, 10);
      ellipse(myX+35, myY + 5, 10, 10);
      ellipse(myX+5, myY + 35, 10, 10);
      ellipse(myX+35, myY + 35, 10, 10);
      ellipse(myX+5, myY + 20, 10, 10);
      ellipse(myX+35, myY + 20, 10, 10);
    }
  }
  void show()
  {
    fill(255, 255, 255);
    stroke(0, 0, 0);
    strokeWeight(2);
    rect(myX, myY, 40, 40, 10);
  }
}
