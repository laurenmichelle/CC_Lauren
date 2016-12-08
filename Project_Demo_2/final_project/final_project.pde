String state="start page";
int sanity=113;
float rating=0;
String object="";
PImage optionspic;
PImage startpic;
PImage gameover;
PImage scrollerpic;
PImage instructionspic;
PImage story;
PImage leftarrow;
PImage rightarrow;
PImage engineerconvo;
PImage salesconvo;
PImage bossconvo;
boolean hours1;
boolean hours2;
boolean hours3;
boolean followers1;
boolean followers2;
boolean followers3;
int engineercircle=275;
int salescircle=engineercircle+500;
int bosscircle=salescircle+420;
int scrolling=0;
void setup(){
size(700,500);
background(255);
optionspic=loadImage("options.png");
startpic=loadImage("start.png");
gameover=loadImage("gameover.png");
instructionspic=loadImage("instructions.png");
story=loadImage("story.png");
scrollerpic=loadImage("scrollerpic.png");
leftarrow=loadImage("totheleft.png");
rightarrow=loadImage("totheright.png");
engineerconvo=loadImage("engineerconvo.png");
salesconvo=loadImage("salesconvo.png");
bossconvo=loadImage("bossconvo.png");
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
  if (hours1==true){
  rect(22,240,150,75);}
  else if (hours2==true){
  rect(203,240,150,75);}
  else if (hours3==true){
  rect(380,240,150,75);}
  //FILL IN RED BOXES SECOND ROW
  if(followers1==true){
  rect(22,410,150,75); }
  else if(followers2==true){
  rect(203,410,150,75);}
  else if(followers3==true){
  rect(380,410,150,75);}
}

else if (state=="instructions"){
 
 image(instructionspic, 0,0,700,500);
 textAlign(CENTER);
 fill(255,0,0);
 text("Welcome User: " + object,350,50);  
}

else if (state=="story 1"){
  image(scrollerpic,scrolling,0,1600,500);
  image(story,0,0,700,500);
  image(leftarrow,10,350,50,50);
  image(rightarrow,640,350,50,50);
  //text("Hi " + object + " how are you doing?", width/2, height/2);
  str(rating);
  noFill();
  //rect(engineercircle,100,275,275);
  salescircle=engineercircle+500;
  //rect(salescircle,100,275,275);
  bosscircle=salescircle+420;
  //rect(bosscircle,100,275,275);
  text(rating,150,25);
  fill(255,0,0);
  rect(105,33,sanity,17);
  //rect(355,416,339,74);
 
  
 
   if(mousePressed==true && mouseX>10 && mouseX<60 && mouseY>350 && mouseY<400){      
   scrolling+=10; 
   engineercircle+=10;
  
 }  
   else if( mousePressed==true && mouseX>640 && mouseX<690 && mouseY>350 && mouseY<400){    
     scrolling-=10; 
     engineercircle-=10;
   
 }
  //text("conversation option 1",160,450);
  //text("conversation option 2",500,450);
}
else if(state=="gameover"){
  image(gameover,0,0,700,500);
  
}
else if(state=="engineerconvo"){
 image(engineerconvo,0,0,700,500); 
 image(story,0,0,700,500);
 text(rating,150,25);
 fill(255,0,0);
 rect(105,33,sanity,17);
 text("talk to them",100,460);
 text("go back",430,460);
 
 
 
}
else if(state=="salesconvo"){
  image(salesconvo,0,0,700,500);
  image(story,0,0,700,500);
  text(rating,150,25);
  fill(255,0,0);
  rect(105,33,sanity,17);
  text("talk to them",100,460);
  text("go back",430,460);
  
  
}
else if(state=="bossconvo"){
  image(bossconvo,0,0,700,500);
  image(story,0,0,700,500);
  text(rating,150,25);
  fill(255,0,0);
  rect(105,33,sanity,17);
  text("talk to them",100,460);
  text("go back",430,460);
  
}
}
void mouseClicked(){
  if(state=="start page"){
    state="options";
  }
  else if(state=="options"){
    
    if (mouseX>22 && mouseX<22+150 && mouseY>240 && mouseY<240+75){
      if (hours1==true){
        hours1=false;
        rating-=0.25;
      }
      else if (hours1==false){
        hours1=true;
        rating+=0.25;
      }
      
      
    }
    else if(mouseX>203 && mouseX<203+150 && mouseY>240 && mouseY<240+75){
      if (hours2==false){
     hours2=true; 
     rating+=0.5;
      }
      else if (hours2==true){
     hours2=false;
     rating-=0.5;
      }
     
    }
    else if(mouseX>380 && mouseX<380+150 && mouseY>240 && mouseY<240+75){
     if (hours3==false){
     hours3=true; 
     rating+=1;
     }
     else if (hours3==true){
      hours3=false;
      rating-=1;
     }
     
    }
    else if(mouseX>22 && mouseX<22+150 && mouseY>410 && mouseY<410+75){
     followers1=true; 
     rating+=1;
    }
    else if(mouseX>203 && mouseX<203+150 && mouseY>410 && mouseY<410+75){
     followers2=true;
     rating+=2;
    }
    else if(mouseX>22 && mouseX<22+150 && mouseY>410 && mouseY<410+75){
     followers3=true; 
     rating+=3;
    }
    else{
    state="instructions"; 
    }
   
  }
  else if(state=="instructions"){
    state="story 1";
   
  }
  else if(state=="story 1"){
    if(mouseX>engineercircle && mouseX<engineercircle+275 && mouseY>100 && mouseY<375){
      state="engineerconvo";
    }
    else if(mouseX>salescircle && mouseX<salescircle+275 && mouseY>100 && mouseY<375){
      state="salesconvo";
    }
    else if(mouseX>bosscircle && mouseX<bosscircle+275 && mouseY>100 && mouseY<375){
      state="bossconvo";
    }
  } 
  else if(state=="engineerconvo"){
   if (mouseX>355 && mouseX<355+339 && mouseY>416 && mouseY<416+74){
  state="story 1";
   
 }
  }
 else if(state=="salesconvo"){
   if (mouseX>355 && mouseX<355+339 && mouseY>416 && mouseY<416+74){
  state="story 1";
   
 }  
  }
  else if(state=="bossconvo"){
   if (mouseX>355 && mouseX<355+339 && mouseY>416 && mouseY<416+74){
  state="story 1";
   
 }  
  } 
   // state="gameover"; 
  }


void keyPressed(){
  if(state=="options"){
    object+=key;
  }
}

//void mousePressed(){
//  if (state=="story"){
//    if(mouseX>10 && mouseX<60 && mouseY>350 && mouseY<400){
//      scrolling-=10;
//  }
//  if(mouseX>640 && mouseX<690 && mouseY>350 && mouseY<400){
//    scrolling+=10;
//  }
//}
//}