String userChoice = "Not chosen";
float x;
float y;


void setup(){
  size(1000, 700);
  
}

void draw(){
  background(#ADD8E6);
  if (userChoice == "Sleep") {
    background(#141852);  
}

bed(500, 100, 100, true);
push();
fill(#fdd835);
circle(175, 250, 100);
fill(#EAE3DB);
triangle(150, 350, 50, 500, 250, 500);
pop();
window(50, 200, 100, 150);
window(50, 350, 100, 150);
window(150, 200, 100, 150);
window(150, 350, 100, 150);


textSize(38);
text("Click to go to sleep.", 40, 120); 


}

void bed(float xCenter, float yBottom, float h, boolean Bed) {
fill(#FFFFFF);
  rect(xCenter - 100, yBottom + 200, 500, 150);
  fill(#B68E65);
  rect(xCenter - 100, yBottom + 350, 50, 100);
  rect(xCenter + 350, yBottom + 350, 50, 100);
  rect(xCenter - 150, yBottom + 50, 50, 400);
fill(#FFFFFF);
  rect(xCenter - 50, yBottom + 150, 450, 50);
}


void window(float xCenter, float yBottom, float h, float Window){
push();
  noFill();
strokeWeight(10);
  rect(xCenter, yBottom, h, Window);
pop();
}



void mousePressed() {
  if (
    (mouseX > 0 &&
    mouseX < 801 &&
    mouseY > 0 && mouseY < 801)) {
    userChoice = "Sleep";
  } else {
    userChoice = "Not Chosen";
 }
  println(userChoice);
}
