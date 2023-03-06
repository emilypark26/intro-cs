void setup() {
  size(1000, 600);
  rectMode(CENTER);

  for (int row = 1; row <= 2; row = row + 1) {
    for (int b = 1; b <= 30; b = b + 1) {
      float w = (float)random(50, 100);
      building (b * 70, row * 300, w, (int)random(200, 500), (int) w/25);
    }
  }
}


void building(float xCenter, float yBottom, float W, float BH, int numWindows) {
  fill(#B2AC88);
  rect(xCenter, yBottom - BH / 2, W, BH);
  fill(#B2AC11);
  rect(xCenter, yBottom - 45 / 2, 30, 45);
  float step =  W / (numWindows + 1);
  float xLeft = xCenter - W/2;
  //  int n = 1;
  // n = n + 1;
  for (int n = 1; n <= numWindows; n = n + 1) {
    rect(xLeft + n * step, yBottom / 1.5, 20, 20);
  }
}
