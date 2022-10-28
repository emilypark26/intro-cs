void setup () {
  
  size(1000, 1000);
  
}

  
int n = 0;
int x = 0 ;
int m = 0;
int t = 0;

void draw(){
 background(#000000);
  fill(255, 0, 0, m);
m = m + 1;
  circle(width/2, height/2, 300);
 
  
  
 fill(#FFFFFF);
 square(600, x, 50);
 if (x == 1000) {
   x = 0;
 }
 
x = x + 2;
triangle(0, 0, 0, 100, t, 50);
t = t + 2;



  
}
