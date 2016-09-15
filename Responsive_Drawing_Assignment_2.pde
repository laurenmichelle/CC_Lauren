

void setup(){
  size(700,700);
}

void draw(){
 background(255);
strokeWeight(2);
 //outline/border lines
 line(100,0,700,0);
 line(0,100,0,700);
 line(700,0,700,700);
 line(0,700,700,700);
 
 strokeWeight(3);
 //lines going horizontally
 line(0,125,700,125);
 line(0,150,700,150);
 line(0,175,700,175);
 line(0,350,700,350);
 line(0,525,700,525);
 line(0,550,700,550);
 line(0,575,700,575);

 //lines going vertically
 line(125,0,125,700);
 line(150,0,150,700);
 line(175,0,175,700);
 line(350,0,350,700);
 line(525,0,525,700);
 line(550,0,550,700);
 line(575,0,575,700);
 




 strokeWeight(2);
 //first row squares
 rect(0,0,100,100);
 rect(0,200,100,100);
 rect(0,400,100,100);
 rect(0,600,100,100);
 
 //second row squares
 rect(200,0,100,100);
 rect(200,200,100,100);
 rect(200,400,100,100);
 rect(200,600,100,100);

//third row squares
 rect(400,0,100,100);
 rect(400,200,100,100);
 rect(400,400,100,100);
 rect(400,600,100,100);

//fourth row squares
 rect(600,0,100,100);
 rect(600,200,100,100);
 rect(600,400,100,100);
 rect(600,600,100,100);
 

}