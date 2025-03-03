class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  // number of segments in each tendril (helps create that random direction, many little lines)
  private int myNumSegments;
  private float myX, myY;
  private double myAngle;
  // see which cycle of recursion we on, so draw with different colors!
  private int cycleDecidesColor;
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    //your code here
    myNumSegments = len;
    myX = x;
    myY = y;
    myAngle = theta;
  }
  public void show()
  {
      float startX = myX;
      float startY = myY;
    //your code here
    // one tendril is being created
    for(int i = 0; i < myNumSegments; i++) {
      myAngle += Math.random()*.4 - .2;
      float endX = startX + (float)Math.cos(myAngle)*SEG_LENGTH;
      float endY = startY + (float)Math.sin(myAngle)*SEG_LENGTH;
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
    }
      if(myNumSegments >= 5) {
        Cluster cool = new Cluster(myNumSegments/3, (int)startX, (int)startY);
      } else {
        // do nothing
      }
    
  } // end of show function
} // end of Tendril class
