import ddf.minim.*;

AudioPlayer gameovermusic;
AudioPlayer mainmusic;
AudioPlayer premusic;

String state="start page";
String m="m";
int sanity=113;
float rating=2;
String object="";
String riddle="";
PImage engineergoback;
PImage salesgoback;
PImage mysterymannoriddle;
PImage mysterymanriddle;
PImage mystermanconvopt1;
PImage error;
PImage blackrating;
PImage whiterating;
PImage redrating;
PImage mysteryconvopt1;
PImage mysteryman;
PImage optionspic;
PImage startpic;
PImage gameover;
PImage scrollerpic;
PImage instructionspic;
PImage instructions2;
PImage story;
PImage leftarrow;
PImage rightarrow;
PImage engineerconvo;
PImage salesconvo;
PImage bossconvo;
PImage engineeroption1;
PImage ev1a1;
PImage ev1a2;
PImage ev1o1badresp;
PImage ev1o1goodresp;
PImage ev1o2;
PImage ev1o2a1;
PImage ev1o2a2;
PImage ev1o2badresp;
PImage ev1o2goodresp;
PImage ev1o2goodbye;
PImage ev1o2goodbye2;
PImage bv1openning;
PImage b1v2o1;
PImage bv1o1a1;
PImage bv1o1a2;
PImage bv1final1;
PImage bv1final2;
PImage bv1final3;
PImage sv1openning;
PImage sv1o1;
PImage sv1o1a1;
PImage sv1o1a2;
PImage sv1o1badresp;
PImage sv1o2;
PImage svo2goodresp;
PImage svo2badresp;
PImage winnerscreen;
PImage wronganswertoriddle;
PImage rightanswertoriddle;
boolean hours1;
boolean hours2;
boolean hours3;
boolean followers1;
boolean followers2;
boolean followers3;
boolean sgoback=false;
boolean egoback=false;
boolean talkedtoeveryone=false;
int engineercircle=275;
int salescircle=engineercircle+500;
int bosscircle=salescircle+420;
int scrolling=0;
boolean errormessage=false;
void setup(){
size(700,500);
background(255);
instructions2=loadImage("instructions2.png");
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
engineeroption1=loadImage("ev1o1.png");
ev1a1=loadImage("ev1a1.png");
ev1a2=loadImage("ev1a2.png");
ev1o1badresp=loadImage("ev1o1badresp.png");
ev1o1goodresp=loadImage("ev1o1goodresp.png");
ev1o2=loadImage("ev1o2.png");
ev1o2a1=loadImage("ev1o2a1.png");
ev1o2a2=loadImage("ev1o2a2.png");
ev1o2badresp=loadImage("ev1o2badresp.png");
ev1o2goodresp=loadImage("ev1o2goodresp.png");
ev1o2goodbye=loadImage("ev1o2goodbye.png");
ev1o2goodbye2=loadImage("ev1o2goodbye2.png");
bv1openning=loadImage("bv1openning.png");
b1v2o1=loadImage("b1v2o1.png");
bv1o1a1=loadImage("bv1o1a1.png");
bv1o1a2=loadImage("bv1o1a2.png");
bv1final1=loadImage("bv1final1.png");
bv1final2=loadImage("bv1final2.png");
bv1final3=loadImage("bv1final3.png");
sv1openning=loadImage("sv1openning.png");
sv1o1=loadImage("sv1o1.png");
sv1o1a1=loadImage("sv1o1a1.png");
sv1o1a2=loadImage("sv1o1a2.png");
sv1o1badresp=loadImage("sv1o1badresp.png");
sv1o2=loadImage("sv1o2.png");
svo2goodresp=loadImage("svo2goodresp.png");
svo2badresp=loadImage("svo2badresp.png");
winnerscreen=loadImage("winnerscreen.png");
mysteryman=loadImage("mysteryman.png");
mysteryconvopt1=loadImage("mysteryconvopt1.png");
blackrating=loadImage("blackrating.png");
whiterating=loadImage("whiterating.png");
redrating=loadImage("redrating.png");
error=loadImage("Error.png");
mystermanconvopt1=loadImage("mystermanconvopt1.png");
mysterymanriddle=loadImage("mysterymanriddle.png");
mysterymannoriddle=loadImage("mysterymannoriddle.png");
wronganswertoriddle=loadImage("wronganswertoriddle.png");
rightanswertoriddle=loadImage("rightanswertoriddle.png");
salesgoback=loadImage("salesgoback.png");
engineergoback=loadImage("engineergoback.png");

Minim minim;
minim=new Minim(this);
gameovermusic = minim.loadFile("backgroundsong.mp3");
mainmusic= minim.loadFile("mainsong.mp3");
premusic=minim.loadFile("01 presong.mp3");
premusic.play();


}



void draw(){

if (state=="start page"){
  background(255);
  image(startpic,0,0,700,500);
  
}
else if (sgoback==true && state=="salesgoback"){
image(salesgoback,0,0,700,500);
fill(255);
noStroke();
rect(0,0,250,100);
fill(255,0,0);
text("go back",430,460);
fill(255,0,0);
 //CORRECT PLACEMENT FOR NEW RATING
  image(blackrating,-9,-6,700,500);
 rect(102,31,sanity,17);

fill(255,0,0);
text(rating,150,25);
 fill(255,0,0);
 //CORRECT PLACEMENT FOR NEW RATING
  image(blackrating,-9,-6,700,500);
 rect(102,31,sanity,17);  
}
else if(egoback==true && state=="engineergoback"){
 image(engineergoback,0,0,700,500);
 image(story,0,0,700,500);
fill(255);
noStroke();
rect(0,0,250,50);
fill(255,0,0);
text("go back",430,460);


fill(255,0,0);
text(rating,150,25);
 fill(255,0,0);
 //CORRECT PLACEMENT FOR NEW RATING
  image(blackrating,-9,-6,700,500);
 rect(102,31,sanity,17); 
  
}
if (state=="options"){
  image(optionspic,0,0,700,500);
  fill(255,0,0);
  textSize(50);
  text(object,30,115);
  textSize(25);
  fill(255);
  textAlign(CORNER);
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
if (state=="instructions2"){
 image(instructions2,0,0,700,500); 
}
if (state=="instructions"){
 
 image(instructionspic, 0,0,700,500);

 textAlign(CENTER);
 fill(255,0,0);
 text("Welcome User: " + object,350,50);
 mainmusic.rewind();
}

if (state=="story 1"){
 
  background(255);
  image(scrollerpic,scrolling,0,1600,500);
  image(story,0,0,700,500);
  image(leftarrow,10,350,50,50);
  image(rightarrow,640,350,50,50);
  image(mysteryman,scrolling+1800,-50,700,500);
  if (errormessage==true){
  image(error,0,0,700,500);}
  noFill();
 
  //rect(8,416,335,74);
  //(mousex>8 && mouseX<8+335 && mouseY>416 && mouseY<416+74)
  //(mouseX>355 && mouseX<355+339 && mouseY>416 && mouseY<416+74)
   
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
else if (state=="winnerscreen"){
image(winnerscreen,0,0,700,500); 
text(rating,150,25);
  fill(0,0,0);
   rect(102,31,sanity,17);
 image(whiterating,-9,-6,700,500);
 sanity=113; 
  
}
else if(state=="mysterymannoriddle"){
 image(mysterymannoriddle,0,0,700,500);
  text(rating,150,25);
 fill(255,0,0);
 //CORRECT PLACEMENT FOR NEW RATING
 rect(102,31,sanity,17);
 image(blackrating,-9,-6,700,500);
  
}
else if(state=="mysterymanriddle"){
image(mysterymanriddle,0,0,700,500);
 text(rating,150,25);
 fill(255,0,0);
 //CORRECT PLACEMENT FOR NEW RATING
 rect(102,31,sanity,17);
 image(blackrating,-9,-6,700,500);
 text(riddle,350,425);
 fill(0);
 text("Type here:",100,425);
}
else if(state=="mysteryman"){
 image(mysteryconvopt1,0,0,700,500);
 text(rating,150,25);
 fill(255,0,0);
 //CORRECT PLACEMENT FOR NEW RATING
 rect(102,31,sanity,17);
 image(blackrating,-9,-6,700,500);
}
else if(state=="wronganswertoriddle"){
 image(wronganswertoriddle,0,0,700,500);
 text(rating,150,25);
 fill(255,0,0);
 //CORRECT PLACEMENT FOR NEW RATING
 rect(102,31,sanity,17);
 image(blackrating,-9,-6,700,500);
}

else if(state=="rightanswertoriddle"){
 image(rightanswertoriddle,0,0,700,500);
 text(rating,150,25);
 fill(255,0,0);
 //CORRECT PLACEMENT FOR NEW RATING
 rect(102,31,sanity,17);
 image(blackrating,-9,-6,700,500); 
  
}
else if (state=="bv1openning"){
 image(bv1openning,0,0,700,500);
 text(rating,150,25);
  fill(255,0,0);
  rect(105,33,sanity,17);
  fill(255,0,0);
 //CORRECT PLACEMENT FOR NEW RATING
  image(blackrating,-6,-4,700,500);

}
else if(state=="b1v2o1"){
 image(b1v2o1,0,0,700,500);
 text(rating,150,25);
  fill(255,0,0);
  rect(105,33,sanity,17);
  fill(255,0,0);
 //CORRECT PLACEMENT FOR NEW RATING
  image(blackrating,-6,-4,700,500);

}
else if(state=="bv1o1a1"){
 image(bv1o1a1,0,0,700,500); 
 text(rating,150,25);
  fill(255,0,0);
  rect(105,33,sanity,17);
  image(blackrating,-6,-4,700,500);
}
else if(state=="bv1o1a2"){
 image(bv1o1a2,0,0,700,500);
 text(rating,150,25);
  fill(255,0,0);
  rect(105,33,sanity,17);
  image(blackrating,-6,-4,700,500);
}
else if(state=="bv1final1"){
 image(bv1final1,0,0,700,500); 
 text(rating,150,25);
  fill(255,0,0);
  rect(105,33,sanity,17);
  image(blackrating,-6,-4,700,500);
}
else if(state=="bv1final2"){
 image(bv1final2,0,0,700,500); 
 text(rating,150,25);
  fill(255,0,0);
  rect(105,33,sanity,17);
  image(blackrating,-6,-4,700,500);
}
else if(state=="bv1final3"){
 image(bv1final3,0,0,700,500); 
 text(rating,150,25);
  fill(255,0,0);
  rect(105,33,sanity,17);
  image(blackrating,-6,-4,700,500);
}
else if(state=="sv1openning"){
 image(sv1openning,0,0,700,500); 
 text(rating,150,25);
  fill(255,0,0);
  rect(105,33,sanity,17);
  image(blackrating,-6,-4,700,500);
}
else if(state=="sv1o1"){
 image(sv1o1,0,0,700,500); 
 text(rating,150,25);
  fill(255,0,0);
  rect(105,33,sanity,17);
  image(blackrating,-6,-4,700,500);
}
else if(state=="sv1o1a1"){
 image(sv1o1a1,0,0,700,500); 
 text(rating,150,25);
  fill(255,0,0);
  rect(105,33,sanity,17);
  image(blackrating,-6,-4,700,500);
}
else if(state=="sv1o1a2"){
 image(sv1o1a2,0,0,700,500); 
 text(rating,150,25);
  fill(255,0,0);
  rect(105,33,sanity,17);
  image(blackrating,-6,-4,700,500);
}
else if(state=="sv1o1badresp"){
 image(sv1o1badresp,0,0,700,500); 
 text(rating,150,25);
  fill(255,0,0);
  rect(105,33,sanity,17);
  image(blackrating,-6,-4,700,500);
}
else if(state=="sv1o2"){
 image(sv1o2,0,0,700,500); 
 text(rating,150,25);
  fill(255,0,0);
  rect(105,33,sanity,17);
  image(blackrating,-6,-4,700,500);
}
else if(state=="svo2goodresp"){
 image(svo2goodresp,0,0,700,500); 
 text(rating,150,25);
  fill(255,0,0);
  rect(105,33,sanity,17);
  image(blackrating,-6,-4,700,500);
}
else if(state=="svo2badresp"){
 image(svo2badresp,0,0,700,500); 
 text(rating,150,25);
  fill(255,0,0);
  rect(105,33,sanity,17);
  image(blackrating,-6,-4,700,500);
}


else if(state=="gameover"){
  image(gameover,0,0,700,500);
  text(rating,150,25);
  fill(255,0,0);
 rating=0.0;
 sanity=0;
 rect(102,31,sanity,17);
 image(redrating,-9,-6,700,500);
 mainmusic.rewind();
  
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
else if(state=="ev1o1"){
 image(engineeroption1,0,0,700,500); 
 text(rating,150,25);
  fill(255,0,0);
  rect(105,33,sanity,17);
  image(blackrating,-6,-4,700,500);
}
else if (state=="ev1a1"){
 image(ev1a1,0,0,700,500);
 text(rating,150,25);
  fill(255,0,0);
  rect(105,33,sanity,17);
  image(blackrating,-6,-4,700,500);
}
else if(state=="ev1a2"){
 image(ev1a2,0,0,700,500);
 text(rating,150,25);
  fill(255,0,0);
  rect(105,33,sanity,17);
  image(blackrating,-6,-4,700,500);
}
else if(state=="ev1o1badresp"){
 image(ev1o1badresp,0,0,700,500); 
 text(rating,150,25);
  fill(255,0,0);
  rect(105,33,sanity,17);
  image(blackrating,-6,-4,700,500);
}
else if(state=="ev1o1goodresp"){
 image(ev1o1goodresp,0,0,700,500);
 text(rating,150,25);
  fill(255,0,0);
  rect(105,33,sanity,17);
  image(blackrating,-6,-4,700,500);
}
else if(state=="ev1o2"){
 image(ev1o2,0,0,700,500); 
 text(rating,150,25);
  fill(255,0,0);
  rect(105,33,sanity,17);
  image(blackrating,-6,-4,700,500);
}
else if(state=="ev1o2a1"){
 image(ev1o2a1, 0,0,700,500);
 text(rating,150,25);
  fill(255,0,0);
  rect(105,33,sanity,17);
  image(blackrating,-6,-4,700,500);
}
else if (state=="ev1o2a2"){
 image(ev1o2a2,0,0,700,500); 
 text(rating,150,25);
  fill(255,0,0);
  rect(105,33,sanity,17);
  image(blackrating,-6,-4,700,500);
}
else if(state=="ev1o2badresp"){
 image(ev1o2badresp,0,0,700,500); 
 text(rating,150,25);
  fill(255,0,0);
  rect(105,33,sanity,17);
  image(blackrating,-6,-4,700,500);
}
else if(state=="ev1o2goodresp"){
 image(ev1o2goodresp,0,0,700,500);
 text(rating,150,25);
  fill(255,0,0);
  rect(105,33,sanity,17);
  image(blackrating,-6,-4,700,500);
}
else if(state=="ev1o2goodbye"){
 image(ev1o2goodbye,0,0,700,500);
 text(rating,150,25);
  fill(255,0,0);
  rect(105,33,sanity,17);
  image(blackrating,-6,-4,700,500);
}
else if(state=="ev1o2goodbye2"){
image(ev1o2goodbye2,0,0,700,500);
text(rating,150,25);
  fill(255,0,0);
  rect(105,33,sanity,17);
  image(blackrating,-6,-4,700,500);

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
 else if(state=="mysterymannoriddle"){
  state="story 1"; 
 }
 else if(state=="salesgoback"){
  if (mouseX>355 && mouseX<355+339 && mouseY>416 && mouseY<416+74){
   
  state="story 1";
 } 
 }
 else if(state=="engineergoback"){
  if (mouseX>355 && mouseX<355+339 && mouseY>416 && mouseY<416+74){
   
  state="story 1";
 } 
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
     rating+=0.3;
      }
      else if (hours2==true){
     hours2=false;
     rating-=0.3;
      }
     
    }
    else if(mouseX>380 && mouseX<380+150 && mouseY>240 && mouseY<240+75){
     if (hours3==false){
     hours3=true; 
     rating+=0.5;
     }
     else if (hours3==true){
      hours3=false;
      rating-=0.5;
     }
     
    }
    else if(mouseX>22 && mouseX<22+150 && mouseY>410 && mouseY<410+75){
     if(followers1==false){
     followers1=true; 
     rating+=0.25;
     }
     else if(followers1==true){
     followers1=false; 
     rating-=0.25;  
     }
    }
    else if(mouseX>203 && mouseX<203+150 && mouseY>410 && mouseY<410+75){
     if(followers2==false){
     followers2=true; 
     rating+=0.5;
     }
     else if(followers2==true){
     followers2=false; 
     rating-=0.5;  
     }
    }

    else if(mouseX>380 && mouseX<380+150 && mouseY>410 && mouseY<410+75){
      if(followers3==false){
     followers3=true; 
     rating+=1;
     }
     else if(followers3==true){
     followers3=false; 
     rating-=1;  
     }
    }
    else if(object!="" && (followers1==true || followers2==true || followers3==true) && (hours1==true || hours2==true || hours3==true)){
    state="instructions"; 
    }
   
  }
  else if(state=="instructions"){
    state="instructions2";
  }
  else if(state=="instructions2"){
    mainmusic.play();
    premusic.pause();
    premusic.rewind();
    
    
   
    state="story 1";
  }
  else if(state=="mysteryman"){
     if (mouseX>355 && mouseX<355+339 && mouseY>416 && mouseY<416+74){
   
  state="mysterymannoriddle";
 }
 if(mouseX>8 && mouseX<8+335 && mouseY>416 && mouseY<416+74){
  state="mysterymanriddle"; 
  }  
  
    
    
  }
  else if(state=="mysterymanriddle"){
  
   if (riddle.equals(m)){
    state="rightanswertoriddle";
   }
   else{
   state="wronganswertoriddle";
     
   }
  }
  else if(state=="wronganswertoriddle"){
  state="gameover";  
  mainmusic.pause();
  gameovermusic.play();
    
  }
  else if(state=="rightanswertoriddle"){
  rating=5;
  state="story 1";
  
  
    
  }
    
    
  else if(state=="story 1"){
    
    if(mouseX>scrolling+2000 && mouseX<scrolling+2415 && mouseY>25 && mouseY<500){
     state="mysteryman";
    
    }
    else if(mouseX>engineercircle && mouseX<engineercircle+275 && mouseY>100 && mouseY<375){
      if(egoback==false){
      state="engineerconvo";}
      else if(egoback==true){
       state="engineergoback"; 
      }
    }
    else if(mouseX>salescircle && mouseX<salescircle+275 && mouseY>100 && mouseY<375){
      if (sgoback==false && rating>=3.25){
      state="salesconvo";}
      else if(sgoback==true && rating>=3.25){
      state="salesgoback";  
      }
      else{
       errormessage=true; 
      }
      
    }
    else if(mouseX>bosscircle && mouseX<bosscircle+275 && mouseY>100 && mouseY<375){
      if (rating>=4.0 || talkedtoeveryone==true){
      state="bossconvo";}
      else{
      errormessage=true;  
      }
    }
   else{
   errormessage=false; 
   }
  } 
 
  else if(state=="engineerconvo"){
   if (mouseX>355 && mouseX<355+339 && mouseY>416 && mouseY<416+74){
   
  state="story 1";
 }
 
  
 if(mouseX>8 && mouseX<8+335 && mouseY>416 && mouseY<416+74){
  state="ev1o1"; 
  }
  }
  else if(state=="ev1o1"){
   if (mouseX>355 && mouseX<355+339 && mouseY>416 && mouseY<416+74){
   
  state="ev1a2";
 }
 if(mouseX>8 && mouseX<8+335 && mouseY>416 && mouseY<416+74){
  state="ev1a1"; 
  } 
  }
else if(state=="gameover"){
  hours1=false;
  hours2=false;
  hours3=false;
  followers1=false;
  followers2=false;
  followers3=false;
  rating=2;
  object="";
  sanity=113;
  gameovermusic.pause();
  gameovermusic.rewind();
  premusic.rewind();
  premusic.play();
  mainmusic.rewind();
  
  state="start page";
}
 else if(state=="ev1o1badresp"){
  state="gameover";
  gameovermusic.play();
  mainmusic.pause();
  mainmusic.rewind();
  rating=0.0;
  
 }
 else if(state=="ev1a2"){
   state="ev1o1goodresp";
 }
 else if(state=="ev1o1goodresp"){
  state="ev1o2";
  rating+=0.25;
 }
 else if(state=="ev1a1"){
  state="ev1o1badresp"; 
 }
 else if(state=="salesconvo"){
   if (mouseX>355 && mouseX<355+339 && mouseY>416 && mouseY<416+74){
  state="story 1";
   }
   else if(mouseX>8 && mouseX<8+335 && mouseY>416 && mouseY<416+74){
   state="sv1openning";
 }  
 
  }
  else if(state=="sv1openning"){
   state="sv1o1"; 
  }
   else if(state=="sv1o1"){
   if (mouseX>355 && mouseX<355+339 && mouseY>416 && mouseY<416+74){
  state="sv1o1a2";
   }
   else if(mouseX>8 && mouseX<8+335 && mouseY>416 && mouseY<416+74){
   state="sv1o1a1";
 }  
  }
 else if(state=="sv1o1a1"){
  state="sv1o1badresp"; 
 }
 else if(state=="sv1o1badresp"){
  state="gameover"; 
  gameovermusic.play();
 

 }
 else if(state=="svo2goodresp"){
 state="story 1";  
 sgoback=true;
 rating+=.3;
 sanity-=30;
 talkedtoeveryone=true;
 }
 else if(state=="sv1o2"){
   if (mouseX>355 && mouseX<355+339 && mouseY>416 && mouseY<416+74){
  state="svo2badresp";
   }
   else if(mouseX>8 && mouseX<8+335 && mouseY>416 && mouseY<416+74){
   state="svo2goodresp";
 } 
  }
 else if(state=="svo2badresp"){
  state="gameover"; 
  gameovermusic.play();
  mainmusic.pause();
  mainmusic.rewind();

 }
 else if(state=="sv1o1badresp"){
   state="gameover";
   gameovermusic.play();
   mainmusic.pause();
   mainmusic.rewind();

 }
 
 else if(state=="sv1o1a2"){
  state="sv1o2"; 
 }
  else if(state=="bossconvo"){
   if (mouseX>355 && mouseX<355+339 && mouseY>416 && mouseY<416+74){
  state="story 1"; 
 }
  else if(mouseX>8 && mouseX<8+335 && mouseY>416 && mouseY<416+74){
  state="bv1openning"; 
  } 
  }
  
  else if(state=="bv1openning"){
   state="b1v2o1"; 
  }
  
else if(state=="ev1o2"){
   if (mouseX>355 && mouseX<355+339 && mouseY>416 && mouseY<416+74){
   
  state="ev1o2a2";
 }
 else if(mouseX>8 && mouseX<8+335 && mouseY>416 && mouseY<416+74){
  state="ev1o2a1"; 
  } 
}
else if(state=="b1v2o1"){
   if (mouseX>355 && mouseX<355+339 && mouseY>416 && mouseY<416+74){
   
  state="bv1o1a1";
 }
 else if(mouseX>8 && mouseX<8+335 && mouseY>416 && mouseY<416+74){
  state="bv1o1a2"; 
  } 
}
else if(state=="bv1o1a1"){
 state="gameover";
 gameovermusic.play();
 mainmusic.pause();
 mainmusic.rewind();

}
else if(state=="bv1o1a2"){
  if (rating<3.0){
   state="bv1final3";
  }
  else if(rating<4.0 && rating>=3.0){
  state="bv1final2";  
  }
  else if(rating>=4.0 && rating<=5.0){
   state="bv1final1"; 
  }
}
else if(state=="bv1final2" || state=="bv1final3"){
  state="gameover";
  gameovermusic.play();
  mainmusic.pause();
  mainmusic.rewind();
  sanity=0;

  
}
else if(state=="bv1final1"){
  state="winnerscreen";
}
  else if(state=="ev1o2a2"){
  state="ev1o2badresp";
 }

 else if(state=="ev1o2badresp"){
  gameovermusic.play();
  
  mainmusic.pause();
  mainmusic.rewind();

  state="gameover"; 
 }
  else if(state=="ev1o2a1"){
  state="ev1o2goodresp";
  rating+=0.2;
 }
 else if(state=="ev1o2goodresp"){
  state="ev1o2goodbye";
 }
  else if(state=="ev1o2goodbye"){
  state="ev1o2goodbye2"; 
  rating+=.2;
 }
else if(state=="ev1o2goodbye2"){
  state="story 1";
  egoback=true;
  sanity-=30;
}


println(state);
println(riddle);
  }



void keyPressed(){
  if(state=="options"){
    object+=key;
  }
  if(state=="mysterymanriddle"){
  riddle+=key; 

  
}

  
  
}