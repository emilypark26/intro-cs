//what the animation does: this animation is an array of fireworks over a skyline.
//the fireworks pop over and over again and the background changes when the user clicks on it.
//what ended up not working: something that i tried that didn't work were the bezier curves for the fireworks, so i used arcs instead for the fireworks
//another thing i tried that didn't work so well was doing random sparks over the screen, but the sparks wouldn't disappear and distracted from the firework display.
//project inspo: i wasn't really inspired by anything but i thought that doing fireworks would be cool and satisfy the requirements for the project.


//variables:
float angle = 0;
float r = 0;
float g = 0;
float b = 0;
String userChoice = "Not chosen";
int randomInt;

void setup() {
  size(800, 800);
}


void draw() {
  background(#141852);

  //random background changes:
  //this part of the code is partially from the rock paper scissors code
  if (userChoice == "Click to Change Background" && randomInt == 0) {
    background(#4f53a2);
  }
  if (userChoice == "Click to Change Background" && randomInt == 1) {
    background(#296d98);
  }
  if (userChoice == "Click to Change Background" && randomInt == 2) {
    background(#bf6d9d);
  }
  if (userChoice == "ResetBg") {
    background(#141852);
  }


  //reset background button:
  fill(#000000);
  rect(470, 500, 100, 50);
  fill(#FFFFFF);
  text("Reset Background", 470, 520);


  //buildings:
  {
    push();
    fill(#000000);
    rect(0, 600, 150, 500);
    rect(150, 700, 100, 500);
    rect(250, 500, 200, 500);
    rect(450, 600, 150, 500);
    rect(600, 800, 150, 500);
    rect(600, 550, 100, 500);
    rect(700, 630, 100, 500);
    pop();


    // colors for fireworks 1 and 2
    push();
    noFill();
    color(#FF2394);
    strokeWeight(5);
    stroke(r, g, b);
    r = random(255);
    g = random(255);
    b = random(255);
    push();
    firework();
    pop();

    push();
    translate(200, 200);
    firework();
    pop();

    push();
    translate(-200, 300);
    firework();
    pop();

    pop();
    //angle measures for the arcs in the fireworks

    angle = angle + .05;
    if (angle >= PI) {
      angle = 0;
    }
  }
}

void firework() {
  beginShape();
  translate(width / 2-50, height / 6);
  rotate(radians(30));
  translate(-width / 2+50, -height / 6);
  arc(width / 2, height / 6, 100, 50, PI, PI + angle);
  translate(width / 2-50, height / 6);
  rotate(radians(30));
  translate(-width / 2+50, -height / 6);
  arc(width / 2, height / 6, 100, 50, PI, PI + angle);
  translate(width / 2-50, height / 6);
  rotate(radians(30));
  translate(-width / 2+50, -height / 6);
  arc(width / 2, height / 6, 100, 50, PI, PI + angle);
  translate(width / 2-50, height / 6);
  rotate(radians(30));
  translate(-width / 2+50, -height / 6);
  arc(width / 2, height / 6, 100, 50, PI, PI + angle);
  translate(width / 2-50, height / 6);
  rotate(radians(30));
  translate(-width / 2+50, -height / 6);
  arc(width / 2, height / 6, 100, 50, PI, PI + angle);
  translate(width / 2-50, height / 6);
  rotate(radians(30));
  translate(-width / 2+50, -height / 6);
  arc(width / 2, height / 6, 100, 50, PI, PI + angle);
  translate(width / 2-50, height / 6);
  rotate(radians(30));
  translate(-width / 2+50, -height / 6);
  arc(width / 2, height / 6, 100, 50, PI, PI + angle);
  translate(width / 2-50, height / 6);
  rotate(radians(30));
  translate(-width / 2+50, -height / 6);
  arc(width / 2, height / 6, 100, 50, PI, PI + angle);
  translate(width / 2-50, height / 6);
  rotate(radians(30));
  translate(-width / 2+50, -height / 6);
  arc(width / 2, height / 6, 100, 50, PI, PI + angle);
  translate(width / 2-50, height / 6);
  rotate(radians(30));
  translate(-width / 2+50, -height / 6);
  arc(width / 2, height / 6, 100, 50, PI, PI + angle);
  translate(width / 2-50, height / 6);
  rotate(radians(30));
  translate(-width / 2+50, -height / 6);
  arc(width / 2, height / 6, 100, 50, PI, PI + angle);
  translate(width / 2-50, height / 6);
  rotate(radians(30));
  translate(-width / 2+50, -height / 6);
  arc(width / 2, height / 6, 100, 50, PI, PI + angle);
  endShape();
}


// user input for the button
void mousePressed() {
  if (
    mouseX > 470 &&
    mouseX < 570 &&
    mouseY > 500 && mouseY < 551
    ) {
    userChoice = "ResetBg";
    randomInt = (int) random(3);
  } else if
    (mouseX > 0 &&
    mouseX < 801 &&
    mouseY > 0 && mouseY < 801) {
    userChoice = "Click to Change Background";
    randomInt = (int) random(3);
  } else {
    userChoice = "Not Chosen";
  }
  println(userChoice);
}
