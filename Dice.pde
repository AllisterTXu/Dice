void setup()
{
	noLoop();
}
void draw()
{
	//your code here
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
		//your code here
	}
	void show()
	{
		//your code here
	}
}
