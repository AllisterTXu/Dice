void setup()
{
  size(500, 500);
  noLoop();
}
void draw()
{
  for (int x = 0; x < 36; x++) {
    for (int y = 0; y < 36; y++) {
      Die square = new Die(50, 50);
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
    fill(0, 0, 0);
    stroke(255, 255, 255);
    if(roll == 1)
    {
      
    }
  }
}
