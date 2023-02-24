void setup() {
  size(1000, 600);
  rectMode(CENTER);
  building(100, 600, 200, 300);
  building(300, 600, 150, 600);
}


void building(float xCenter, float yCenter, float W, float BH) {
  fill(0);
  rect(xCenter,yCenter,W,BH);
  fill(255,0,0);
  rect(xCenter,yCenter,30,45);
  int numWindows = 4;
  float step =  W / (numWindows + 1);
  float xLeft = xCenter - W/2;
  int n = 1;
  while (n <= numWindows) {
  rect(xLeft + n * step, yCenter - 70, 20, 20);  
  n = n + 1;

  }
  
rect(xLeft + 1 * step, yCenter, 20, 20);

}
