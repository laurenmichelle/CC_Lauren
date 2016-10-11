PImage Hilary;
PImage Trump;
PImage Gary;
PImage WriteIn;
PImage Flag;
PImage Seal;
PImage Question;
PImage GaryRoll;
PImage HilaryRoll;
PImage TrumpRoll;
PImage dottedLine;
//this is for a 5 second timer
int currentTime=0;
int savedTime=0;
String state="prevote";


void setup(){
  size(700,700);
  savedTime=millis();
  Hilary=loadImage("Hilary.png");
  Trump=loadImage("Trump.png");
  Gary=loadImage("Gary.png");
  WriteIn=loadImage("WriteIn.png");
  Flag=loadImage("Flag.png");
  Seal=loadImage("officialSeal.png");
  Question=loadImage("Question-mark-blackandwhite.png");
  GaryRoll=loadImage("GaryRoll.png");
  HilaryRoll=loadImage("HilaryRoll.png");
  TrumpRoll=loadImage("TrumpRoll.png");
  dottedLine=loadImage("dotted-bar.png");
}

void draw(){
  
  if (state=="prevote"){
    background(255);
    image(Flag,100,0,500,700);
   
    fill(random(0,100));
    textAlign(CENTER);
    textSize(50);
    text("Voting Booth Simulator",width/2,height/2);
    text("Click to Vote",width/2,height/2 +100);
  }
  //VOTE STATE
  if (state=="vote"){
    currentTime=savedTime;
    currentTime=millis()-savedTime;
    println(currentTime);
    //background
    background(0);
 //paper
    fill(255);
    rect(100,0,500,700);
 //header
    fill(255,0,0);
    rect(100,0,500,75);
    textAlign(CENTER);
    textSize(20);
    fill(0);
    text("Presidential Election Ballot 2016",width/2,50);
    image(Seal,110,0,75,75);
 //Instructions
    textSize(12);
    text("Please fill in the box next to your choice (VOTE FOR ONE).",350,100);
 //Hilary
    fill(0);
    textSize(20);
    text("Hilary Clinton (DEM)",225,175);
    textSize(12);
    text("VP Tim Kaine",225,200);
    fill(255);
    rect(500,150,50,50);
    image(dottedLine,325,125,175,100);
    if(500<mouseX && mouseX<550 && 150<mouseY && mouseY<200){
     fill(0);
     rect(500,150,50,50);
     image(HilaryRoll,500,150,50,50);
   }
 //Trump
     fill(0);
     textSize(20);
     text("Donald Trump (REP)",225,325);
     textSize(12);
     text("VP Mike Pence",225,350);
     fill(255);
     rect(500,300,50,50);
     image(dottedLine,325,275,175,100);
     if(500<mouseX && mouseX<550 && 300<mouseY && mouseY<350){
       fill(0);
       rect(500,300,50,50);
       image(TrumpRoll,500,300,50,50);
 }
 //Gary
    fill(0);
    textSize(20);
    text("Gary B. Johnson (LIB)",225,475);
    textSize(12);
    text("VP Bill Weld",225,500);
    fill(255);
    rect(500,450,50,50);
    image(dottedLine,325,425,175,100);
    if(500<mouseX && mouseX<550 && 450<mouseY && mouseY<500){
      fill(0);
      rect(500,450,50,50);
      image(GaryRoll,500,450,50,50);
 }
 //Write-in
    fill(0);
    textSize(20);
    text("Write in a canidate",225,625);
    line(125,650,325,650);
    fill(255);
    rect(500,600,50,50);
    image(dottedLine,325,575,175,100);
    if(500<mouseX && mouseX<550 && 600<mouseY && mouseY<650){
      fill(255);
      rect(500,600,50,50);
      image(Question,500,600,50,50);
 }
 //END OF VOTING STATE
  }
  if (currentTime==5000){
    println("no vote");
    state="no vote";
    savedTime=currentTime;
    currentTime=millis()-savedTime;
  }
  if (state=="no vote"){
      background(200);
      fill(0);
      text("Did you seriously just not vote?",width/2,height/2);
      text("That's the whole point of this game.",width/2,height/2+100);
      text("Click again to actually let your voice be heard!",width/2,height/2+200);
  }
 
  
  if (state=="trump"){
    background(255);
    fill(255);
    image(Trump,0,0,700,700);
    textSize(30);
    text("You voted:",100,100);
    text("Click to vote again!",550,650);
    textSize(50);
    fill(random(0,255));
    text("Trump",600,100);
  }
  if (state=="hilary"){
    background(255);
    image(Hilary,0,0,700,700);
    fill(0);
    text("You voted:",100,425);
    fill(255);
    text("Click to vote again!",550,650);
    fill(random(0,255));
    textSize(30);
    text("Hilary",width/2,height/2+50);
  }
  if (state=="gary"){
    background(255);
    fill(0);
    image(Gary,0,0,700,700);
    fill(255);
    textSize(30);
    text("Click to vote again!",550,650);
    text("You voted:",600,75);
    textSize(50);
    fill(random(0,255));
    text("Gary",600,500);
  }
  if (state=="write-in"){
    background(255);
    image(WriteIn,0,0,700,700);
    fill(255);
    textSize(20);
    text("Click to vote again!",600,150);
    fill(random(0,255),random(0,255),random(0,255));
    textSize(35);
    text("You voted to write someone in!",width/2,625);
  }
  }


void mouseClicked(){
  if(state=="prevote"){
    state="vote";
    
  }
  else if(state=="trump"){
   state="prevote";
 }
  else if(state=="hilary"){
   state="prevote";
 }
  else if(state=="gary"){
   state="prevote";
  }
  else if(state=="write-in"){
   state="prevote";
 }
  else if(state=="no vote"){
   state="prevote";
 }
  //hilary box
  else if(state=="vote" && 500<mouseX && mouseX<550 && 150<mouseY && mouseY<200){
    state="hilary";
  }
 //trump box
  else if(state=="vote" && 500<mouseX && mouseX<550 && 300<mouseY && mouseY<350){
    state="trump";
  }
  //gary box
  else if(state=="vote" && 500<mouseX && mouseX<550 && 450<mouseY && mouseY<500){
    state="gary";
  }
  
  //you pick box
  else if(state=="vote" && 500<mouseX && mouseX<550 && 600<mouseY && mouseY<650){
    state="write-in";
  }
  
 }