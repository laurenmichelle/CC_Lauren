 
 //Train Tracks by Lauren Blake

//By clicking the mouse you create the steam clouds of the train
//By clicking the spacebar, you reset your drawing

 //Variables
 String a= "Connect the Dots to reveal the image!";
 String b= "Then press the spacebar to do it over again!";
 String c="Try clicking the mouse when you're all done :)";
 
 float firstCloud = 275.0;
 float secondCloud = 235.0;
 float thirdCloud = 220.0;

void setup(){
  background(252,248,110);
  size(800,800);
  
   fill(0);
   textSize(20);
   text(a,20,20,400,400);
 text(b,20,50,500,420);
 text(c,20,80,500,400);
 
 //NUMBERS FOR POINTS! BEGINS HERE
//1
fill(0);
textSize(20);
text("1",430,540); 
//2
fill(0);
textSize(20);
text("2",320,540); 
//3
fill(0);
textSize(20);
text("3",210,540); 
//4
fill(0);
textSize(20);
text("4",120,540); 
//5
fill(0);
textSize(20);
text("5",120,440); 
//6 
fill(0);
textSize(20);
text("6",175,440); 
//7
fill(0);
textSize(20);
text("7",150,290); 
//8
fill(0);
textSize(20);
text("8",310,290); 
//9
fill(0);
textSize(20);
text("9",275,440); 
//10
fill(0);
textSize(20);
text("10",320,440); 
//11
fill(0);
textSize(20);
text("11",460,460); 
//12
fill(0);
textSize(20);
text("12",460,410); 
//13
fill(0);
textSize(20);
text("13",390,410); 
//14
fill(0);
textSize(20);
text("14",390,360); 
//15
fill(0);
textSize(20);
text("15",685,360); 
//16
fill(0);
textSize(20);
text("16",720,410); 
//17
fill(0);
textSize(20);
text("17",645,410); 
//18
fill(0);
textSize(20);
text("18",645,560); 
//19
fill(0);
textSize(20);
text("19",645,650); 


//LINES AND ELLIPSES BEGIN HERE!!!!!!

fill(255);
strokeWeight(3);
//back of train car lines 
//line up to point 18 ish
line(600,700,600,530);
//line across to 18
line(600,530,675,530);
//line up to point 1 & 11
line(450,700,450,450);
//line from point 12 to 17
line(450,420,675,420);

//lining of the bottom of the car
strokeWeight(3);
line(20,700,600,700);

//back of train rectangle
fill(228,30,92);
rect(490,445,175,60);

//steam engine lines
line(195,450,265,450);
line(180,340,280,340);


//bumper
fill(255,142,204);
rect(20,675,100,25);
fill(252,140,53);
triangle(20,675,120,675,120,450);
fill(255,242,137);
triangle(70,675,20,675,120,450);


//line 4 (up)
line(120,675,120,550);

//rectangle that connects wheel 6&7
rect(565,705,110,15);

//train wheels
//wheel 1
strokeWeight(3);
fill(87,239,250);
ellipse(140,725,75,75);
fill(104,84,232);
ellipse(140,725,15,15);
//wheel 2
fill(87,239,250);
ellipse(225,725,75,75);
fill(104,84,232);
ellipse(225,725,15,15);
//wheel 3
fill(87,239,250);
ellipse(310,725,75,75);
fill(104,84,232);
ellipse(310,725,15,15);
//wheel 4
fill(87,239,250);
ellipse(395,725,75,75);
fill(104,84,232);
ellipse(395,725,15,15);
//wheel 5
fill(87,239,250);
ellipse(480,725,75,75);
fill(104,84,232);
ellipse(480,725,15,15);
//wheel 6
fill(87,239,250);
ellipse(570,715,90,90);
//wheel 7
ellipse(670,715,90,90);

//rectangle that connects wheel 6&7
fill(104,84,232);
rect(565,705,110,15);

//point 1
strokeWeight(10);
point(450,550);

//point 2
strokeWeight(10);
point(340,550);

//point 3
strokeWeight(10);
point(230,550);

//point 4
strokeWeight(10);
point(120,550);

//point 5
strokeWeight(10);
point(120,450);

//point 6
strokeWeight(10);
point(195,450);

//point 7
strokeWeight(10);
point(170,300);

//point 8
strokeWeight(10);
point(290,300);

//point 9
strokeWeight(10);
point(265,450);

//point 10
strokeWeight(10);
point(340,450);

//point 11
strokeWeight(10);
point(450,450);

//point 12
strokeWeight(10);
point(450,420);

//point 13
strokeWeight(10);
point(420,420);

//point 14
strokeWeight(10);
point(420,370);

//point 15
strokeWeight(10);
point(715,370);

//point 16
strokeWeight(10);
point(715,420);

//point 17
strokeWeight(10);
point(675,420);

//point 18
strokeWeight(10);
point(675,540);

//point 19
strokeWeight(10);
point(675,660);




}



void keyPressed(){
  stroke(0);
background(252,248,110);
  text(a,20,20,400,400);
 text(b,20,50,500,420);
 text(c,20,80,500,400);
fill(0);
textSize(20);
text("1",430,540); 
//2
fill(0);
textSize(20);
text("2",320,540); 
//3
fill(0);
textSize(20);
text("3",210,540); 
//4
fill(0);
textSize(20);
text("4",120,540); 
//5
fill(0);
textSize(20);
text("5",120,440); 
//6 
fill(0);
textSize(20);
text("6",175,440); 
//7
fill(0);
textSize(20);
text("7",150,290); 
//8
fill(0);
textSize(20);
text("8",310,290); 
//9
fill(0);
textSize(20);
text("9",275,440); 
//10
fill(0);
textSize(20);
text("10",320,440); 
//11
fill(0);
textSize(20);
text("11",460,460); 
//12
fill(0);
textSize(20);
text("12",460,410); 
//13
fill(0);
textSize(20);
text("13",390,410); 
//14
fill(0);
textSize(20);
text("14",390,360); 
//15
fill(0);
textSize(20);
text("15",685,360); 
//16
fill(0);
textSize(20);
text("16",720,410); 
//17
fill(0);
textSize(20);
text("17",645,410); 
//18
fill(0);
textSize(20);
text("18",645,560); 
//19
fill(0);
textSize(20);
text("19",645,650); 


//LINES AND ELLIPSES BEGIN HERE!!!!!!

fill(255);
strokeWeight(3);
//back of train car lines 
//line up to point 18 ish
line(600,700,600,530);
//line across to 18
line(600,530,675,530);
//line up to point 1 & 11
line(450,700,450,450);
//line from point 12 to 17
line(450,420,675,420);

//lining of the bottom of the car
strokeWeight(3);
line(20,700,600,700);

//back of train rectangle
fill(228,30,92);
rect(490,445,175,60);

//steam engine lines
line(195,450,265,450);
line(180,340,280,340);


//bumper
fill(255,142,204);
rect(20,675,100,25);
fill(252,140,53);
triangle(20,675,120,675,120,450);
fill(255,242,137);
triangle(70,675,20,675,120,450);


//line 4 (up)
line(120,675,120,550);

//rectangle that connects wheel 6&7
rect(565,705,110,15);

//train wheels
//wheel 1
strokeWeight(3);
fill(87,239,250);
ellipse(140,725,75,75);
fill(104,84,232);
ellipse(140,725,15,15);
//wheel 2
fill(87,239,250);
ellipse(225,725,75,75);
fill(104,84,232);
ellipse(225,725,15,15);
//wheel 3
fill(87,239,250);
ellipse(310,725,75,75);
fill(104,84,232);
ellipse(310,725,15,15);
//wheel 4
fill(87,239,250);
ellipse(395,725,75,75);
fill(104,84,232);
ellipse(395,725,15,15);
//wheel 5
fill(87,239,250);
ellipse(480,725,75,75);
fill(104,84,232);
ellipse(480,725,15,15);
//wheel 6
fill(87,239,250);
ellipse(570,715,90,90);
//wheel 7
ellipse(670,715,90,90);

//rectangle that connects wheel 6&7
fill(104,84,232);
rect(565,705,110,15);

//point 1
strokeWeight(10);
point(450,550);

//point 2
strokeWeight(10);
point(340,550);

//point 3
strokeWeight(10);
point(230,550);

//point 4
strokeWeight(10);
point(120,550);

//point 5
strokeWeight(10);
point(120,450);

//point 6
strokeWeight(10);
point(195,450);

//point 7
strokeWeight(10);
point(170,300);

//point 8
strokeWeight(10);
point(290,300);

//point 9
strokeWeight(10);
point(265,450);

//point 10
strokeWeight(10);
point(340,450);

//point 11
strokeWeight(10);
point(450,450);

//point 12
strokeWeight(10);
point(450,420);

//point 13
strokeWeight(10);
point(420,420);

//point 14
strokeWeight(10);
point(420,370);

//point 15
strokeWeight(10);
point(715,370);

//point 16
strokeWeight(10);
point(715,420);

//point 17
strokeWeight(10);
point(675,420);

//point 18
strokeWeight(10);
point(675,540);

//point 19
strokeWeight(10);
point(675,660);

}

void draw(){
strokeWeight(5);
stroke((random(150,255)),(random(150,255)),(random(150,255)));
 line(mouseX,mouseY,pmouseX,pmouseY);
}

void mousePressed(){

firstCloud = firstCloud+200;
secondCloud = secondCloud+200;
thirdCloud = thirdCloud+200;
 
noStroke();
fill((random(100,255)),(random(100,255)),(random(100,255)));
ellipse(firstCloud-200,225,100,100);

ellipse(secondCloud-200,160,100,100); 

ellipse(thirdCloud-200,230,75,75);

}