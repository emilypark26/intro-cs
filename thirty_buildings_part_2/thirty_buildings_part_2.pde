void setup() {
  size(1000, 600);
  rectMode(CENTER);
for(int b = 1; b <= 30; b = b + 1) {
  building(1000 - b * 150, 300, 200, (int) random(300,600), (int) random(2,6));

}

}


void building(float xCenter, float yBottom, float W, float BH, int numWindows) {
  fill(#B2AC88);
  rect(xCenter, yBottom, W, BH);
  fill(#B2AC11);
  rect(xCenter, yBottom + BH / 2 - 45 / 2, 30, 45);
  float step =  W / (numWindows + 1);
  float xLeft = xCenter - W/2;
  //  int n = 1;
  // n = n + 1;
  for (int n = 1; n <= numWindows; n = n + 1) {
    rect(xLeft + n * step, yBottom - 70, 20, 20);
  }
}
