int myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
public void setup()
{
  size(400,400);
  //background(0);
}
public void draw()
{
  //snowflake(200, 200, 200);
  //line(200, 200 - 150, 200, 200);
  //line(200, 200, 200, 350);
  //line(80, 100, 200, 200);
  //line(320, 100, 200, 200);
  //line(80, 300, 200, 200);
  //line(320, 300, 200, 200);
  
}
public void mousePressed()//optional
{
  
}
public void snowflake(int x, int y, int len, double angle) 
{
  double angle1 = angle + 0.6;
  double angle2 = angle - 0.6;
  int endX1 = (int)(len*Math.cos(angle1) + x);
  int endY1 = (int)(len*Math.sin(angle1)+y);
  int endX2 = (int)(len*Math.cos(angle2) + x);
  int endY2 = (int)(len*Math.sin(angle2)+y );
  if(len <= 30){
    //line(x, y - 150, x, y);
    //line(x, y, x, y + 150);
    //line(x - 120, y - 100, x, y);
    //line(x + 120, y - 100, x, y);
    //line(x - 120, y + 100, x, y);
    //line(x + 120, y + 100, x, y);
    line(x, y, endX1, endY1);
    line(x, y, endX2, endY2);
  } else {
    
  }
}
