void setup () {
  size(1000, 1000);
}
  
int n = 0;
int x = 900 ;

void draw(){
 background(60, 250, 20);
 square(n, 100, 100);
 n = n + 3;
 fill(52, 173, 200);
 circle(300, x, 50);
x = x - 3;

//idk how to make it bounce off the walls :( 

}
