int r = 0;

void setup() {
  size(1000, 1000); 
}

void draw() {
background(#87ceEB);
  noStroke();

//brick wall
fill(#aa4a44);
rect(0, 550, 1000, 1000);

translate(150, 0);
scale(0.5);
translate(0, 450);


rotate(radians(r));
r = r - 1;
println(r);

{



if (r <= -720) {
  r = -720;
}

}


//body
fill(#F2DA8A);
strokeWeight(0);
ellipse(320, 350, 350, 400);

//trousers
fill(#6F8FAF);
arc(320, 440, 300, 210, 0, PI);

//eyes
fill(#FFFFFF);
circle(280, 275, 60);
circle(350, 275, 60);
fill(#000000);
circle(280, 290, 30);
fill(#000000);
circle(350, 290, 30);

//arms
strokeWeight(0);
fill(#F2DA8A);
rect(80, 350, 70, 30);
rect(490, 350, 70, 30);

//hands
fill(#FFFDD0);
circle(75, 365, 40);
circle(565, 365, 40);

//bag
fill(#B59B7C);
triangle(565, 385, 595, 410, 555, 410);
rect(540, 410, 70, 50);




//nose
fill(#FF8BA0);
strokeWeight(0);
ellipse(315, 325, 45, 25);

//mouth
fill(#000000);
ellipse(316, 360, 20, 20);

//hat
fill(#000000);
rect(245, 70, 150, 100);
ellipse(320, 185, 200, 50);

//legs
fill(#6F8FAF);
strokeWeight(0);
rect(360, 535, 30, 100);
rect(260, 535, 30, 100);

//shoes
fill(#FFFDD0);
strokeWeight(0);
rect(360, 635, 50, 20);
rect(260, 635, 50, 20);

}
