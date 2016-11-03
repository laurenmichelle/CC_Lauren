
//my mousePressed function and my original function REFUSED TO WORK so here it is in all of its "glory"
var ball_new_y_position=490
var ball_new_size=100
var ball_new_x_position=0


function preload(){
soccerGoal=loadImage("soccer_goal.png")
soccerBall=loadImage("soccer_ball.png")
}

function setup() {
  createCanvas(500,500)
var ball_new_y_position=490
var ball_new_size=100

}

function draw() {
  line(0,175,500,175)
  fill(17,183,81)
  noStroke();
  rect(0,175,500,425)
  fill(73,196,240)
  rect(0,0,500,175)
  imageMode(CENTER,TOP)
  image(soccerGoal,width/2,130,200,100);
  imageMode(CENTER)
  if (ball_new_y_position==490){
  image(soccerBall,mouseX,ball_new_y_position,ball_new_size,ball_new_size)
    if (mouseIsPressed){
      ball_new_x_position=pmouseX
  }

  }
 else{
   image(soccerBall,ball_new_x_position,ball_new_y_position,ball_new_size,ball_new_size)
 }
 
  if (mouseIsPressed){
  if (ball_new_y_position>175){
  ball_new_y_position-=2
  ball_new_size-=0.47 
  }
  }
  if(ball_new_x_position>250 && ball_new_x_position<450 && ball_new_y_position<175){
    fill(0)
    text("GOALLLLLL")
  }
  else{
    fill(0)
   text("You missed") 
    
  }
}
 
 
 

  



