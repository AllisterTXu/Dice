void setup()
{
  size(1000, 800);
  noLoop();
}
void draw()
{
  background(128);
  for (int x = 0; x < 300; x += 10) {
    for (int y = 0; y < 300; y += 10) {
      Die square = new Die(x*4, y*4);
      square.show();
    }
  }
}

void mousePressed()
{
  redraw();
}

class Die //models one single dice cube
{
  int roll, myX, myY;
  double six1 = 1/6;
  double six2 = 2/6;
  double six3 = 3/6;
  double six4 = 4/6;
  double six5 = 5/6;
  double six6 = 6/6;  

  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
  }
  void roll()
  {
    double check = Math.random();
    if (check<six1)
      roll = 1;
    else if (check < six2)
      roll = 2;
    else if (check<six3)
      roll = 3;
    else if (check<six4)
      roll = 4;
    else if (check<six5)
      roll = 5;
    else 
    roll = 6;
  }
  void show()
  {
    fill(255, 255, 255);
    stroke(0, 0, 0);
    strokeWeight(2);
    rect(myX, myY, 40, 40, 10);
    System.out.print(roll);
  }
}
