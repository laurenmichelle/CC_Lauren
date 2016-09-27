//Colors and Lines by Lauren Blake
//click with the mouse in any of the 4 quadrants and see what shapes appear!
//press the spacebar to reset the drawing :)
void setup(){
size(700,700);
//yellow background
background(242,252,110);
noStroke();
//green triangle on the top
fill(144,255,171);
triangle(0,0,350,0,350,350);

//pink square on top
fill(252,110,250);
rect(350,0,700,350);
//blue circle
fill(24,22,198);
ellipse(350,350,350,350);

//red rectangle
fill(250,52,45);
rect(0,350,700,700);

//orange triangle
fill(255,193,21);
triangle(0,700,0,350,350,350);

//purple
fill(129,9,216);
rect(350,350,700,500);

for(int i=0;i<=700;i=i+10){
   stroke(150);
   line(0,i,350,i);
}
   for(int e=350;e<=700;e=e+20){
     stroke(60);
     line(e,0,e,700);
   }
  for(int i=0;i<=700;i=i+15){
   //gray lines
     strokeWeight(1);
   stroke(30);
    line(700,i,i/2,i*.5);
  }
}
void draw(){
 
}

void mouseClicked(){
 if(mouseX>350){
  if(mouseY<350){
   noStroke();
 fill(random(0,200),random(0,200),random(0,200));
  ellipse(mouseX,mouseY,random(50,150),random(50,150));
   }
 }
  if(mouseX<350){
  if(mouseY>350){
  fill(random(0,200),random(0,200),random(0,200));
  noStroke();
    rectMode(CENTER);
    rect(mouseX,mouseY,random(10,110),random(10,110));
  }}
  if(mouseX<350){
  if(mouseY<350){
    stroke(random(100,255));
    strokeWeight(10);
    point(mouseX,mouseY);
  }}
  if(mouseX>350){
  if(mouseY>350){
      strokeWeight(random(2));
  stroke(random(200,255));
  line(350,mouseY,700,mouseY);
   }}

    for(int i=0;i<=700;i=i+10){
      strokeWeight(1);
      stroke(150);
   line(0,i,350,i);
}
   for(int e=350;e<=700;e=e+20){
     strokeWeight(1);
     stroke(60);
     line(e,0,e,700);
   }

     }
void keyPressed(){
 size(700,700);
//yellow background
background(242,252,110);
noStroke();
//green triangle on the top
fill(144,255,171);
triangle(0,0,350,0,350,350);
//pink square on top
fill(252,110,250);
rect(350,0,700,350);
//blue circle
fill(24,22,198);
ellipse(350,350,350,350);

//red rectangle
fill(250,52,45);
rect(0,350,700,700);

//orange triangle
fill(255,193,21);
triangle(0,700,0,350,350,350);

//purple
fill(129,9,216);
rect(350,350,700,500);

for(int i=0;i<=700;i=i+10){
   stroke(150);
   line(0,i,350,i);
}
   for(int e=350;e<=700;e=e+20){
     stroke(60);
     line(e,0,e,700);
   }
  for(int i=0;i<=700;i=i+15){
   //gray lines
     strokeWeight(1);
   stroke(30);
    line(700,i,i/2,i*.5);
  }
}