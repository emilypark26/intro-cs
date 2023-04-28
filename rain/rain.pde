String userChoice = "Not chosen";
int randomInt;
float puddle = 0;
int numDrops = 10; 
float[] yPos = new float[numDrops];
float[] speeds = new float[numDrops];

void setup() {
  size(1000, 600);
  for (int i = 0; i < numDrops; i++) {
    speeds[i] = random(5, 15);
    yPos[i] = random(-500, -50);
  }
}

void draw() {
  background(100);
  for (int x = 0; x < numDrops; x= x+1) {
    yPos[x] = yPos[x] + 5;
    raindrop(x * width / numDrops, yPos[x], 10, 20);
    if (yPos[x] > 550) {
      yPos[x] = 0;
      puddle = puddle + 1;
    }


  fill(75, 60, 200);
  ellipse(500, 600, 1000, puddle);
  textSize(40);
  text(yPos[2], 500, 200);
}

}

void raindrop(float xCenter, float yCenter,
  float w, float h) {
  triangle(xCenter - w/2, yCenter, xCenter + w/2,
    yCenter, xCenter, yCenter - h);
  arc(xCenter, yCenter, w, h, 0, PI);
}


//When I do voidmousepressed the code disappears  

void mousePressed() {
  if (mouseX < 1001 &&
mouseY < 601) {
    for (int x = 0; x < numDrops; x= x+1) {
    yPos[x] = yPos[x] + 5;
    raindrop(x * width / numDrops, yPos[x], 10, 20);
    if (yPos[x] > 550) {
      yPos[x] = 0;
      puddle = puddle + 1;
    }


  fill(75, 60, 200);
  ellipse(500, 600, 1000, puddle);
  textSize(40);
  text(yPos[2], 500, 200);
}


} else {
    userChoice = "Not Chosen";
  }
}
