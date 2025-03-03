public int cycleDecidesColor = 0;
public boolean iWantBigFlowers = false;
public int decideColor = 0;
public int time = millis();
public void setup()
{
  size(500, 500);  
  background(255);
  noLoop();
}

public void draw()
{
  
  background(#a6d8ed);
  for(int i = 1; i <= 5; i++) {
     decideColor = (int)(Math.random()*4+1);
    Cluster c = new Cluster(25, i*90, 375); // initial number of segments in the tendril and starting (x,y) coordinate
  }
  // dirt
  noStroke();
  fill(#66472a);
  rect(0, 375, 500, 300);
  
    // clouds
  noStroke();
  // cloud in front
  fill(255, 255, 255, 200);
  rect(20, 50, 100, 20, 5, 5, 5, 5);
  rect(50, 31, 100, 20, 5, 5, 5, 5);
  rect(80, 50, 100, 25, 5, 5, 5, 5);

  // cloud behind
  fill(255, 255, 255, 200);
  pushMatrix();
  translate(70, 0);
  rect(120, 50+5, 100, 20, 5, 5, 5, 5);
  rect(150, 55+5, 120, 25, 5, 5, 5, 5);
  rect(180, 40, 120, 20, 5, 5, 5, 5);
  rect(240, 25, 50, 20, 5, 5, 5, 5);
  rect(250, 40, 70, 25, 5, 5, 5, 5);
  rect(250, 60, 130, 20, 5, 5, 5, 5);
  popMatrix();

}
public void mousePressed()
{
  //    if(time < (int)(millis())) {
  //  redraw();
  //  time = millis();
  //}
  redraw();
}
