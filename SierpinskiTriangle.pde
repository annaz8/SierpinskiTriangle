public void setup()
{
	size(300, 300);	
}
public void draw()
{
	background(250,250,250);
	sierpinski(50, 80, 200);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{

	if (len >= 10)
	{
		fill((int)(Math.random()*250),(int)(Math.random()*250),(int)(Math.random()*250));
		sierpinski(x, y, len/2);
		sierpinski(x + len/2, y, len/2);
		sierpinski(x + len/4, y + len/2, len/2 );
	}
	else 
	{
		triangle(x, y, x + len, y, x + len/2, y - len);
	} 

}