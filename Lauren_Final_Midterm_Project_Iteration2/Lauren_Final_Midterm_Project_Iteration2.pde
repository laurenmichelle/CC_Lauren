//Presidential Election Voting Simulator 2016 by Lauren Blake
PImage Intro;
PImage Eagle;
PImage Hilary;
PImage Trump;
PImage Gary;
PImage Jill;
PImage Flag;
PImage Seal;
PImage Question;
PImage GaryRoll;
PImage HilaryRoll;
PImage TrumpRoll;
PImage JillRoll;
PImage dottedLine;
PImage hand;
PImage VoteCount;
PImage Hilaryfuture;
PImage Trumpfuture;
PImage Garyfuture;
PImage Jillfuture;

String state="prevote";
int votes4trump=0;
int votes4hilary=0;
int votes4gary=0;
int votes4jill=0;
int[] pointx= new int[100];
int[] pointy= new int[100];


void setup(){
  size(700,700);
  Intro=loadImage("Intro.png");
  Eagle=loadImage("Eagle.png");
  Hilary=loadImage("Hilary.png");
  Trump=loadImage("Trump.png");
  Gary=loadImage("Gary.png");
  Jill=loadImage("Jillvote.png");
  Flag=loadImage("Flag.png");
  Seal=loadImage("officialSeal.png");
  Question=loadImage("Question-mark-blackandwhite.png");
  GaryRoll=loadImage("GaryRoll.png");
  HilaryRoll=loadImage("HilaryRoll.png");
  TrumpRoll=loadImage("TrumpRoll.png");
  dottedLine=loadImage("dotted-bar.png");
  JillRoll=loadImage("JillSteinRoll.png");
  hand=loadImage("hand.png");
  VoteCount=loadImage("VoteCount.png");
  Hilaryfuture=loadImage("hilaryfuture.png");
  Trumpfuture=loadImage("trumpfuture.png");
  Garyfuture=loadImage("garyfuture.png");
  Jillfuture=loadImage("jillfuture.png");
  for (int i=0;i<pointx.length; i++){
    pointx[i]=int(random(0,width));
    pointy[i]=int(random(0,width));
}
}
void draw(){
  
  if (state=="prevote"){
    background(255);
    image(Intro,0,100,700,500);
   
    fill(0);
    textAlign(CENTER);
    textSize(60);
    fill(random(0,255),random(0,255),random(0,255));
    text("Voting Booth Simulator",width/2,70);
    textSize(20);
    fill(0);
    text("Click anywhere to Start!",width/2,100);
    textSize(20);
    fill(0);
    text("Click here to see the Scoreboard",width/2,625);
    if (mouseX>350-160 && mouseX<350+160 && mouseY>600 && mouseY<630){
    textSize(20);
    rectMode(CENTER);
    fill(255);
    rect(350,615,320,30);
    fill(0);
    text("Click here to see the Scoreboard",width/2,625);
    }
  }
  if (state=="iphone"){
 rectMode(CORNER);
 background(255);
 tint(255,255);
 image(Flag,100,0,500,700);
    stroke(2);
tint(255,255);
image(hand,250,200,700,500);
fill(255);
strokeWeight(2);
rect(200,50,300,600,40,40,40,40);

rect(220,125,260,450);
tint(255,127);
image(Flag,220,125,260,450);
tint(255,255);
ellipse(350,612,50,50);
strokeWeight(3);
line(330,95,370,95);
fill(0);
ellipse(315,95,6,6);
ellipse(350,80,3,3);
fill(255);
textAlign(CENTER);
fill(0);
textSize(50);
text("1:00",350,210);
textSize(15);
text("Tuesday, November 8th, 2016",350,235);
textSize(10);
text("AT&T LTE",280,140);
fill(255);
ellipse(251,135,2,2);
fill(0);
ellipse(243,135,2,2);
ellipse(235,135,2,2);
ellipse(227,135,2,2);
rect(465,130,10,5);
text("100%",447,137);
textAlign(CENTER);
textSize(12);
text("Press home to unlock",350,560);
fill(150,150,150,200);
noStroke();
rect(225,270,250,100,10,10,10,10);
noStroke();
fill(200,200,200,200);
rect(225,270,250,20,10,10,0,0);
fill(0);
textAlign(CENTER);
fill(0);
text("Breaking News",275,285);
fill(255);
textSize(15);
text("Today is voting day!",350,313);
text("Are you going to vote?",350,333);
fill(200,200,200,200);
rect(225,340,250,30,0,0,10,10);
stroke(0);
strokeWeight(1);
textAlign(CENTER);
fill(0);
text("Yes!",285,360);
text("Nah.",415,360);
line(350,340,350,370);

//yes
if (mouseX<225+125 && mouseX>225 && mouseY<340+30 && mouseY>340){
  fill(255);
  text("Yes!",285,360);
}
if(mouseX>225+125 && mouseX<225+250 && mouseY<340+30 && mouseY>340){
  fill(255);
  text("Nah.",415,360);
}
}

if (state=="iphone2"){
stroke(2);
tint(255,255);
image(hand,250,200,700,500);
fill(255);
strokeWeight(2);
rect(200,50,300,600,40,40,40,40);

rect(220,125,260,450);
tint(255,127);
image(Flag,220,125,260,450);
ellipse(350,612,50,50);
strokeWeight(3);
line(330,95,370,95);
fill(0);
ellipse(315,95,6,6);
ellipse(350,80,3,3);
fill(255);
textAlign(CENTER);
fill(0);
textSize(50);
text("1:00",350,210);
textSize(15);
text("Tuesday, November 8th, 2016",350,235);
textSize(10);
text("AT&T LTE",280,140);
fill(255);
ellipse(251,135,2,2);
fill(0);
ellipse(243,135,2,2);
ellipse(235,135,2,2);
ellipse(227,135,2,2);
rect(465,130,10,5);
text("100%",447,137);
textAlign(CENTER);
textSize(12);
text("Press home to unlock",350,560);
fill(150,150,150,200);
noStroke();
rect(225,270,250,100,10,10,10,10);
noStroke();
fill(200,200,200,200);
rect(225,270,250,20,10,10,0,0);
fill(0);
textAlign(CENTER);
fill(0);
text("Breaking News",275,285);
fill(255);
textSize(13);
text("Great! There is a poll booth close by!",350,313);
text("Go now?",350,333);
fill(200,200,200,200);
rect(225,340,250,30,0,0,10,10);
stroke(0);
strokeWeight(1);
textAlign(CENTER);
fill(0);
text("Yes!",350,360);
if (state=="iphone2" && mouseX>225 && mouseX<225+250 && mouseY>340 && mouseY<370){
   fill(255);
  text("Yes!",350,360);
tint(255,255);
}
}
    
    
    
    
    
  
  //VOTE STATE
 if (state=="vote"){
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
      image(GaryRoll,501,450,50,50);
      
    
      
 }
 //Jill Stein
    fill(0);
    textSize(20);
    text("Jill Stein (GCP)",225,625);
    textSize(12);
    text("VP Ajamu Baraka",225,650);
    fill(255);
    rect(500,600,50,50);
    image(dottedLine,325,575,175,100);
    if(500<mouseX && mouseX<550 && 600<mouseY && mouseY<650){
      fill(255);
      rect(500,600,50,50);
      image(JillRoll,500,600,50,50);
 }
 //END OF VOTING STATE
  }
  else if (state=="no vote"){
      background(255);
        for (int i=0; i<pointx.length;i++){
         image(Question,pointx[i],pointy[i],50,50);
        }
      image(Eagle,0,0,700,700);
      fill(255,0,0);
      textAlign(CENTER);
      textSize(35);
      text("Did you seriously just not vote?",350,50);
      textSize(20);
      text("Why would you even play a game called 'Voting Booth Simulator'",350,550); 
      text("if you weren't going to vote?",350,590);
      text("Click again to actually let your voice be heard!",width/2,+675);
  }
 
  
  else if (state=="trump"){
    background(255);
    fill(255);
    image(Trump,0,100,700,500);
    textSize(35);
    fill(0);
    text("You voted for...",width/2,50);
    textSize(70);
    fill(random(0,255),random(0,255),random(0,255));
    text("DONALD TRUMP",width/2,660);
  }
  else if (state=="hilary"){
    background(255);
    image(Hilary,0,100,700,500);
    fill(0);
    textSize(35);
    text("You voted for...",width/2,50);
    fill(random(0,255),random(0,255),random(0,255));
    textSize(70); 
    text("HILARY CLINTON",width/2,660);
  }
  else if (state=="gary"){
    background(255);
    fill(0);
    image(Gary,0,100,700,500);
    textSize(35);
    text("You voted for...",width/2,50);
    textSize(70);
    fill(random(0,255),random(0,255),random(0,255));
    text("GARY JOHNSON",width/2,660);
  }
  else if (state=="jill"){
    background(255);
    image(Jill,0,100,700,500);
    fill(0);
    textSize(35);
    text("You voted for...",width/2,50);
    fill(random(0,255),random(0,255),random(0,255));
    textSize(70);
    text("JILL STEIN",width/2,660);
  }
  else if (state=="vote count"){
    background(255);
    image(VoteCount,50,50,600,600);
    textSize(30);
    fill(random(0,255),random(0,255),random(0,255));
    text("Scoreboard",350,75);
    textSize(40);
    fill(0);
    text(votes4hilary,495,167);
    text(votes4trump,495,305);
    text(votes4gary,495,433);
    text(votes4jill,495,553);
    textSize(20); 
    text("Click to return to home screen",350,650);
  }
  else if (state=="aftervote"){
    background(255);
     tint(255,255);
 image(Flag,100,0,500,700);
    stroke(2);
tint(255,255);
    stroke(2);
tint(255,255);
image(hand,250,200,700,500);
fill(255);
strokeWeight(2);
rect(200,50,300,600,40,40,40,40);

rect(220,125,260,450);
tint(255,127);
image(Flag,220,125,260,450);
ellipse(350,612,50,50);
strokeWeight(3);
line(330,95,370,95);
fill(0);
ellipse(315,95,6,6);
ellipse(350,80,3,3);
fill(255);
textAlign(CENTER);
fill(0);
textSize(50);
text("1:00",350,210);
textSize(15);
text("Tuesday, November 8th, 2016",350,235);
textSize(10);
text("AT&T LTE",280,140);
fill(255);
ellipse(251,135,2,2);
fill(0);
ellipse(243,135,2,2);
ellipse(235,135,2,2);
ellipse(227,135,2,2);
rect(465,130,10,5);
text("100%",447,137);
textAlign(CENTER);
textSize(12);
text("Press home to unlock",350,560);
fill(150,150,150,200);
noStroke();
rect(225,270,250,100,10,10,10,10);
noStroke();
fill(200,200,200,200);
rect(225,270,250,20,10,10,0,0);
fill(0);
textAlign(CENTER);
fill(0);
text("Breaking News",275,285);
fill(255);
textSize(13);
text("Congrats on voting!",350,305);
text("Now go brag to all of your",350,320);
text("Facebook friends that you voted.",350,333);
fill(200,200,200,200);
rect(225,340,250,30,0,0,10,10);
stroke(0);
strokeWeight(1);
textAlign(CENTER);
fill(0);
text("I voted!",350,360);
if (mouseX>225 && mouseX<225+250 && mouseY>340 && mouseY<370){
   fill(255);
  text("I voted",350,360);
}
  }
  else if (state=="one year later"){
   background(random(0,255),random(0,255),random(0,255));
   fill(255);
   textSize(100);
   text("4 Years Later",350,350);
  }
  else if (state=="hilary future"){
    background(0);
   stroke(2);
tint(255,255);
image(hand,250,200,700,500);
fill(255);
strokeWeight(2);
rect(200,50,300,600,40,40,40,40);

rect(220,125,260,450);
tint(255,127);
image(Flag,220,125,260,450);
ellipse(350,612,50,50);
strokeWeight(3);
line(330,95,370,95);
fill(0);
ellipse(315,95,6,6);
ellipse(350,80,3,3);
fill(255);
textAlign(CENTER);
fill(0);
textSize(50);
text("1:00",350,210);
textSize(15);
text("Saturday,January 20th, 2020",350,235);
textSize(10);
text("AT&T LTE",280,140);
fill(255);
ellipse(251,135,2,2);
fill(0);
ellipse(243,135,2,2);
ellipse(235,135,2,2);
ellipse(227,135,2,2);
rect(465,130,10,5);
text("100%",447,137);
textAlign(CENTER);
textSize(12);
text("Press home to unlock",350,560);
fill(150,150,150,200);
noStroke();
rect(225,270,250,100,10,10,10,10);
noStroke();
fill(200,200,200,200);
rect(225,270,250,20,10,10,0,0);
fill(0);
textAlign(CENTER);
fill(0);
text("Breaking News",275,285);
fill(255);
textSize(12);
text("It's officially been 4 years",350,305);
text("since Hilary was inaugurated!",350,320);
text("Click to see highlights of her presidency",350,333);
fill(200,200,200,200);
rect(225,340,250,30,0,0,10,10);
stroke(0);
strokeWeight(1);
textAlign(CENTER);
fill(0);
text("View",350,360);
tint(255,255);
if (state=="hilary future" && mouseX>225 && mouseX<225+250 && mouseY>340 && mouseY<370){
   fill(255);
  text("View",350,360);
}
  }
  else if (state=="hilary future photos"){
    background(0);
  image(Hilaryfuture,0,100,700,500);
  fill(255);
  textSize(20);
    text("Want to change your vote? Click again!",350,650);
  }
  else if (state=="trump future"){
    background(0);
    stroke(2);
tint(255,255);
image(hand,250,200,700,500);
fill(255);
strokeWeight(2);
rect(200,50,300,600,40,40,40,40);

rect(220,125,260,450);
tint(255,127);
image(Flag,220,125,260,450);
ellipse(350,612,50,50);
strokeWeight(3);
line(330,95,370,95);
fill(0);
ellipse(315,95,6,6);
ellipse(350,80,3,3);
fill(255);
textAlign(CENTER);
fill(0);
textSize(50);
text("1:00",350,210);
textSize(15);
text("Saturday,January 20th, 2020",350,235);
textSize(10);
text("AT&T LTE",280,140);
fill(255);
ellipse(251,135,2,2);
fill(0);
ellipse(243,135,2,2);
ellipse(235,135,2,2);
ellipse(227,135,2,2);
rect(465,130,10,5);
text("100%",447,137);
textAlign(CENTER);
textSize(12);
text("Press home to unlock",350,560);
fill(150,150,150,200);
noStroke();
rect(225,270,250,100,10,10,10,10);
noStroke();
fill(200,200,200,200);
rect(225,270,250,20,10,10,0,0);
fill(0);
textAlign(CENTER);
fill(0);
text("Breaking News",275,285);
fill(255);
textSize(12);
text("It's officially been 4 years",350,305);
text("since Trump was inaugurated!",350,320);
text("Click to see highlights of his presidency",350,333);
fill(200,200,200,200);
rect(225,340,250,30,0,0,10,10);
stroke(0);
strokeWeight(1);
textAlign(CENTER);
fill(0);
text("View",350,360);
tint(255,255);
if (state=="trump future" && mouseX>225 && mouseX<225+250 && mouseY>340 && mouseY<370){
   fill(255);
  text("View",350,360);
}
  }
  else if (state=="trump future photos"){
    background(0);
    image(Trumpfuture,0,100,700,500);
    fill(255);
    textSize(20);
    text("Want to change your vote? Click again!",350,650);
  }
  else if (state=="gary future"){
   background(0);
    stroke(2);
tint(255,255);
image(hand,250,200,700,500);
fill(255);
strokeWeight(2);
rect(200,50,300,600,40,40,40,40);

rect(220,125,260,450);
tint(255,127);
image(Flag,220,125,260,450);
ellipse(350,612,50,50);
strokeWeight(3);
line(330,95,370,95);
fill(0);
ellipse(315,95,6,6);
ellipse(350,80,3,3);
fill(255);
textAlign(CENTER);
fill(0);
textSize(50);
text("1:00",350,210);
textSize(15);
text("Saturday,January 20th, 2020",350,235);
textSize(10);
text("AT&T LTE",280,140);
fill(255);
ellipse(251,135,2,2);
fill(0);
ellipse(243,135,2,2);
ellipse(235,135,2,2);
ellipse(227,135,2,2);
rect(465,130,10,5);
text("100%",447,137);
textAlign(CENTER);
textSize(12);
text("Press home to unlock",350,560);
fill(150,150,150,200);
noStroke();
rect(225,270,250,100,10,10,10,10);
noStroke();
fill(200,200,200,200);
rect(225,270,250,20,10,10,0,0);
fill(0);
textAlign(CENTER);
fill(0);
text("Breaking News",275,285);
fill(255);
textSize(12);
text("It's officially been 4 years",350,305);
text("since Gary was inaugurated!",350,320);
text("Click to see highlights of his presidency",350,333);
fill(200,200,200,200);
rect(225,340,250,30,0,0,10,10);
stroke(0);
strokeWeight(1);
textAlign(CENTER);
fill(0);
text("View",350,360);
tint(255,255);
if (state=="gary future" && mouseX>225 && mouseX<225+250 && mouseY>340 && mouseY<370){
   fill(255);
  text("View",350,360);
}
  }
  else if (state=="gary future photos"){
    background(0);
    image(Garyfuture,0,100,700,500);
    fill(255);
    textSize(20);
    text("Want to change your vote? Click again!",350,650);
  }
  else if (state=="jill future"){
    stroke(2);
tint(255,255);
image(hand,250,200,700,500);
fill(255);
strokeWeight(2);
rect(200,50,300,600,40,40,40,40);

rect(220,125,260,450);
tint(255,127);
image(Flag,220,125,260,450);
ellipse(350,612,50,50);
strokeWeight(3);
line(330,95,370,95);
fill(0);
ellipse(315,95,6,6);
ellipse(350,80,3,3);
fill(255);
textAlign(CENTER);
fill(0);
textSize(50);
text("1:00",350,210);
textSize(15);
text("Saturday,January 20th, 2020",350,235);
textSize(10);
text("AT&T LTE",280,140);
fill(255);
ellipse(251,135,2,2);
fill(0);
ellipse(243,135,2,2);
ellipse(235,135,2,2);
ellipse(227,135,2,2);
rect(465,130,10,5);
text("100%",447,137);
textAlign(CENTER);
textSize(12);
text("Press home to unlock",350,560);
fill(150,150,150,200);
noStroke();
rect(225,270,250,100,10,10,10,10);
noStroke();
fill(200,200,200,200);
rect(225,270,250,20,10,10,0,0);
fill(0);
textAlign(CENTER);
fill(0);
text("Breaking News",275,285);
fill(255);
textSize(12);
text("It's officially been 4 years",350,305);
text("since Jill was inaugurated!",350,320);
text("Click to see highlights of her presidency",350,333);
fill(200,200,200,200);
rect(225,340,250,30,0,0,10,10);
stroke(0);
strokeWeight(1);
textAlign(CENTER);
fill(0);
text("View",350,360);
tint(255,255);
if (state=="jill future" && mouseX>225 && mouseX<225+250 && mouseY>340 && mouseY<370){
   fill(255);
  text("View",350,360);
}
  }
  else if (state=="jill future photos"){
    background(0);
    image(Jillfuture,0,100,700,500);
    textSize(20);
    text("Want to change your vote? Click again!",350,650);
  }
  
  }
  



void mouseClicked(){
  if(state=="prevote" && mouseX>350-160 && mouseX<350+160 && mouseY>600 && mouseY<630){
   state="vote count";
  }
  else if (state=="prevote"){
    state="iphone";
  }
  else if (state=="vote count"){
    state="prevote";
  }
   //yes
  else if (state=="iphone" && mouseX>225 && mouseX<225+125 && mouseY>340 && mouseY<370){
    state="iphone2";
  }
  else if (state=="iphone2" && mouseX>225 && mouseX<225+250 && mouseY>340 && mouseY<370){
    state="vote";
  }
   //no
  else if (state=="iphone"&& mouseX<225+250 && mouseX>225+125 && mouseY>340 && mouseY<370){
    state="no vote";
  }
 
  else if(state=="trump"){
   state="aftervote";
 }
  else if(state=="hilary"){
   state="aftervote";
 }
  else if(state=="gary"){
   state="aftervote";
  }
  else if(state=="jill"){
   state="aftervote";
 }
  else if(state=="no vote"){
   state="prevote";
 }
 else if(state=="aftervote"){
   state="one year later";
 }
 
 else if(state=="one year later" && votes4hilary>=votes4jill && votes4hilary>=votes4trump && votes4hilary>=votes4gary){
   state="hilary future";
 }
  else if(state=="one year later" && votes4trump>=votes4jill && votes4trump>=votes4hilary && votes4trump>=votes4gary){
   state="trump future";
 }
  else if(state=="one year later" && votes4gary>=votes4jill && votes4gary>=votes4trump && votes4gary>=votes4hilary){
   state="gary future";
 }
  else if(state=="one year later" && votes4jill>=votes4hilary && votes4jill>=votes4trump && votes4jill>=votes4gary){
   state="jill future";
 }
 
 else if (state=="hilary future" && mouseX>225 && mouseX<225+250 && mouseY>340 && mouseY<370){
   state="hilary future photos";
 }
 
 else if (state=="trump future" && mouseX>225 && mouseX<225+250 && mouseY>340 && mouseY<370){
   state="trump future photos";
 }
 else if (state=="gary future" && mouseX>225 && mouseX<225+250 && mouseY>340 && mouseY<370){
   state="gary future photos";
 }
 else if (state=="jill future" && mouseX>225 && mouseX<225+250 && mouseY>340 && mouseY<370){
   state="jill future photos";
 }
   else if (state=="hilary future photos"){
   state="prevote";
 }
   else if (state=="trump future photos"){
   state="prevote";
 }
   else if (state=="gary future photos"){
   state="prevote";
 }
  else if (state=="jill future photos"){
   state="prevote";
 }
 

  //hilary box
  else if(state=="vote" && 500<mouseX && mouseX<550 && 150<mouseY && mouseY<200){
    state="hilary";
    votes4hilary=votes4hilary+1;
  }
 //trump box
  else if(state=="vote" && 500<mouseX && mouseX<550 && 300<mouseY && mouseY<350){
    state="trump";
    votes4trump=votes4trump+1;
  }
  //gary box
  else if(state=="vote" && 500<mouseX && mouseX<550 && 450<mouseY && mouseY<500){
    state="gary";
    votes4gary=votes4gary+1;
  }
  
  //you pick box
  else if(state=="vote" && 500<mouseX && mouseX<550 && 600<mouseY && mouseY<650){
    state="jill";
    votes4jill=votes4jill+1;
  }
   else if(state=="vote"){
    state="no vote";
   }
  
 }