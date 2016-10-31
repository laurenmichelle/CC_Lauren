PImage youtubeLogo;
PImage subscribe;
PImage options;
PImage play;

//PImage thumbsUp;

String VideoTitle="Title of the video";


//image[] ChannelPicture= new image[3];

void setup(){
  size(800,600);
  youtubeLogo=loadImage("youtubelogo.png");
  subscribe=loadImage("subscribe.png");
  options=loadImage("options.png");
  //thumbsUp=loadImage("thumbsup");
  play=loadImage("play.png");
}

void draw(){
 
 background(255);
 //gray background
 fill(235);
 noStroke();
 rect(0,40,800,600);
 //youtube logo at the top
 image(youtubeLogo,20,5,100,30);
 //white box layout
 //video box
 fill(255);
 rect(25,50,600,425);
 if (mouseX>25 && mouseX<600 && mouseY>50 && mouseY<425){
   image(play,200,160,210,180);
   
 }
  
 rectMode(CORNERS);
 //side video box
 rect(610,50,780,550);
 fill(255);
 //description box
  rect(25,435,600,550);
 //title for the video
 fill(0);
 textSize(25);
 textAlign(LEFT,TOP);
 text("Title of Video" ,35,435);
 //channel info + subscribe boxes
 rectMode(CORNER);
 rect(40,465,30,30);
 textSize(12);
 text("Title of Channel",80,465);
 image(subscribe,80,480,65,15);
 rectMode(CORNER);
 fill(255);
 stroke(1);
 rect(145,480,65,14);
 rectMode(CORNERS);
 textSize(10);
 fill(0);
 text("1,234,567",150,482);
 stroke(235);
 line(40,510,580,510);
 stroke(0,144,209);
 line(580,510,470,510);
 textSize(15);
 text("7,644,932 Views",465,485);
 //image(thumbsUp,500,500,100,30);
 //searchbar
 rectMode(CORNER);
 fill(255);
 stroke(225);
 rect(130,5,500,30);
 fill(100);
 textSize(15);
 text("Search",140,13);
 rectMode(CORNERS);
 //options bar below subscribe
 image(options,30,515,200,30);
 //up next & formatting of other videos
  
  line(610,300,780,300);
  fill(255);
  rect(620,60,770,200);
  rect(620,310,770,450);
  if (mouseX>620 && mouseX<770 && mouseY>60 && mouseY<200){
  stroke(0);
  noFill();
  rect(620,60,770,200); 
  }
  if (mouseX>620 && mouseX<770 && mouseY>310 && mouseY<450){
    stroke(0);
  noFill();
    rect(620,310,770,450);
  }
  fill(0);
  textSize(15);
  text("Title of other video",620,205);
  textSize(12);
  text("Title of channel",620,222);
  textSize(10);
  text("1,009 views",620,235);
  //bottom video
  textSize(15);
  text("Title of other video",620,455);
  textSize(12);
  text("Title of channel",620,472);
  textSize(10);
  text("1,009 views",620,485); 
 
}