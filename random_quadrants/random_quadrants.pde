float x;
float y;

void setup() {
  size(800, 800);
}

void draw() {
  x = random(800);
  y = random(800);
  if (x <= 400 && y <= 400) {
  fill(#C1D4E3);
  circle(x, y, 30);
  }
  if (x >= 400 && y <= 400) {
  fill(#F8B3CA);
  circle(x, y, 30);
  }
  if (x <= 400 && y >= 400) {
  fill(#BEB4D6);
  circle(x, y, 30);
  }
    if (x >= 400 && y >= 400) {
  fill (#CCE8DB);
  circle(x, y, 30);
  }
}
