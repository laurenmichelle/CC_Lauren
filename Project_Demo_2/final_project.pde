String state="start page";
int sanity=0;
int rating=0;
String object="";
PImage optionspic;
PImage startpic;
PImage gameover;
PImage instructionspic;
PImage story;

void setup(){
size(700,500);
background(255);
optionspic=loadImage("options.png");
startpic=loadImage("start.png");
gameover=loadImage("gameover.png");
instructionspic=loadImage("instructions.png");
story=loadImage("story.png");
}


void draw(){

if (state=="start page"){
  background(255);
  image(startpic,0,0,700,500);
  
}
else if (state=="options"){
  image(optionspic,0,0,700,500);
  fill(255,0,0);
  textSize(50);
  text(object,30,115);
  textSize(25);
  fill(255);
  text("< 3 hours",35,285);
  text("3-5 hours",220,285);
  text("5+ hours",400,285);
  text("< 300",45,455);
  text("300-1000",220,455);
  text("1000+",410,455);
  //FILL IN RED BOXES FIRST ROW
  noFill();
  strokeWeight(3);
  stroke(250,0,0);
  
  rect(22,240,150,75);
  rect(203,240,150,75);
  rect(380,240,150,75);
  //FILL IN RED BOXES SECOND ROW
  rect(22,410,150,75); 
  rect(203,410,150,75);
  rect(380,410,150,75);
}

else if (state=="instructions"){
 
 image(instructionspic, 0,0,700,500);
 textAlign(CENTER);
 fill(255,0,0);
 text("Welcome User: " + object,350,50);  
}

else if (state=="story 1"){
  image(story,0,0,700,500);
  text("Hi " + object + " how are you doing?", width/2, height/2);
}
else if(state=="gameover"){
  image(gameover,0,0,700,500);
}
}
void mousePressed(){
  if(state=="start page"){
    state="options";
  }
  else if(state=="options"){
    state="instructions";
  }
  else if(state=="instructions"){
    state="story 1";
  }
  else if(state=="story 1"){
    state="gameover"; 
  }
}

void keyPressed(){
  if(state=="options"){
    object+=key;
  }
}