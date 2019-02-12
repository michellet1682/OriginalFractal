int myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
int extend = 30;
public void setup()
{
  size(600,600);
  background(180,244,255);
}
public void draw()
{
  strokeWeight(2);
  line(300, 300 - 150, 300, 300);
  snowflake(300, 225, 70, 3*Math.PI/2);
  line(300, 300, 300, 450);
  snowflake(300, 375, 70, Math.PI/2);
  line(180, 200, 300, 300);
  snowflake(240, 250, 70, 7*Math.PI/6);
  line(420, 200, 300, 300);
  snowflake(360, 250, 70, 11*Math.PI/6);
  line(180, 400, 300, 300);
  snowflake(240, 350, 70, 5*Math.PI/6);
  line(420, 400, 300, 300);
  snowflake(360, 350, 70, Math.PI/6);
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
  line(x, y, endX1, endY1);
  line(x, y, endX2, endY2);
  if(len>extend){
    snowflake(endX1, endY1, extend-1, angle1);
    snowflake(endX2, endY2, extend-1, angle2);
  }
}
