var ball_new_y_position=490;
var ball_new_size=100;
var ball_new_x_position=0

function setup() {
  createCanvas(500,500);
 
}

function preload(){
soccerGoal=loadImage("soccer_goal.png")
soccerBall=loadImage("soccer_ball.png")
}

function draw() {
  line(0,175,500,175);
  fill(17,183,81);
  noStroke();
  rect(0,175,500,425);
  fill(73,196,240);
  rect(0,0,500,175);
  imageMode(CENTER,TOP);
  image(soccerGoal,width/2,130,200,100);
  imageMode(CENTER);
  image(soccerBall,mouseX,ball_new_y_position,ball_new_size,ball_new_size);
   if (mouseIsPressed){
      ball_new_x_position=pmouseX
  }
 else{
   image(soccerBall,ball_new_x_position,ball_new_y_position,ball_new_size,ball_new_size)
 }


if(ball_new_x_position>150 && ball_new_x_position<350 && ball_new_y_position<175){
    fill(0);
    textSize(20);
    text("GOALLLLLL",50,100);
  }
else if (ball_new_x_position<150 && ball_new_x_position>350 && ball_new_y_position<175) {
    fill(0);
    textSize(20);
    text("You missed",50,100); 
}
}

function move(){
  if (ball_new_y_position>175){
  ball_new_y_position-=2;
  ball_new_size-=0.47;
}
}

function mousePressed(){
ball_new_x_position=pmouseX;
move();
  
}

