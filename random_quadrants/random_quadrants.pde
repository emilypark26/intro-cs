float x;
float y;

void setup() {
  size(600, 600);
}

void draw() {
  x = random(600);
  y = random(600);
  if (x <= 300 && y <= 300) {
  fill(#C1D4E3);
  circle(x, y, 30);
  }
  if (x >= 300 && y <= 300) {
  fill(#F8B3CA);
  circle(x, y, 30);
  }
  if (x <= 300 && y >= 300) {
  fill(#BEB4D6);
  circle(x, y, 30);
  }
    if (x >= 300 && y >= 300) {
  fill (#CCE8DB);
  circle(x, y, 30);
  }
}
