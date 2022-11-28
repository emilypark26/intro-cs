int a = 0;
int b = 0;
int c = 0;
int x = 50;
int y = 60;

int dx = 10; 
int dy = 6; // change in y direction


void setup() {
  size(500, 500);
}

void draw() {
  background(a, b, c);
  circle(x, y, 50); 
  x = x + dx;
  y = y + dy; 
  if ( x >= width ) {
    // turn back 
    dx = -10; 
  } else if ( x <= 0 ) {
    dx = 10;
  a = 163;
  b = 201;
  c = 255;


} else if (x >= 450) {
  a = 166;
  b = 163;
  c = 255;
  
  }

  if ( y >= height ) {
    // turn back 
    dy = -6;
  } else if ( y <= 0 ) {
    dy = 6;
  a = 255;
  b = 163;
  c = 220;
  
  
  } else if (y >= 450) {
  a = 242;
  b = 186;
  c = 255;
  }
    

}
