void setup()
{
  background(10);
  size(600, 600);
  noLoop();
}
void draw()
{
  background(10);
  int numberOfDots = 0;
  for (int y = 20; y < 560; y = y + 60) {
    for (int x = 35; x < 560; x = x + 60) {
      Die practice = new Die(x, y);
      practice.show();
      practice.roll();
      if (practice.myRoll < 7) {
        numberOfDots = numberOfDots + practice.myRoll;
      }
    }
  }
  fill(255);
  textSize(20);
  text("Number of Dots: " + numberOfDots, 50, 575);
  text("Max Dots: " + 6*81, 410, 575);
}   
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myRoll, myX, myY;
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    myRoll = (int)(Math.random()*6)+1;
  }
  void roll()
  {
    if (myRoll == 1) {
      fill(0);
      ellipse(myX+25, myY+25, 10, 10);
    }
    if (myRoll == 2) {
      fill(0);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
    }
    if (myRoll == 3) {
      fill(0);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
    }
    if (myRoll == 4) {
      fill(0);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
    }
    if (myRoll == 5) {
      fill(0);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
    }
    if (myRoll == 6) {
      fill(0);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+25, myY+10, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+25, myY+40, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
    }
  }
  void show()
  {
    fill(((int)(Math.random()*150)+100), ((int)(Math.random()*150)+100), ((int)(Math.random()*150)+100));
    rect(myX, myY, 50, 50, 5);
  }
}
