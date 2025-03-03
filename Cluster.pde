public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster
    Tendril[] bestTendrils;
    Tendril coolTendril;
    public Cluster(int len, int x, int y)
    {
      // radians(180)/7 + 180
        // your code here
        bestTendrils = new Tendril[NUM_STEMS];
        for(int i = 0; i < bestTendrils.length; i++) {
          bestTendrils[i] = new Tendril(len, radians(180)/7 + 180, x, y);  
          if(cycleDecidesColor <=2) {
            strokeWeight(1);
            stroke(#2e854e);
          } else {
            strokeWeight(1.5);
            // randomize petal color
            if(decideColor == 1) {
                // pink
                stroke(#ff26e2);
              } else if(decideColor == 2) {
                // orange
                stroke(#ff8205);
              } else if(decideColor == 3) {
                // blue
                stroke(#2e7bf0);
              } else if(decideColor == 4) {
                // purple
                stroke(#782ade);
              }
          }
          bestTendrils[i].show();
          cycleDecidesColor++;
        }
        //coolTendril = new Tendril(len, Math.random()*TWO_PI, x, y);
        //coolTendril.show();
        cycleDecidesColor = 0;
    }
}
