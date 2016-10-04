String state="pregame";

void setup(){
  size(1000,500);
}

void draw(){
 textAlign(CENTER);
 textSize(33);
  
  if (state=="pregame"){
    background(0);
     stroke(255);
    text("Create your own picture game!",width/2,height/3);
    text("Click to start the game", width/2,height/2);
  }
  else if(state=="setting"){
    stroke(255);
    background(0);
    text("Choose a setting.",width/2,height/2);
    for(int i=200;i<=1000;i=i+300){
     fill(255);
     rectMode(CENTER);
      rect(i,700,200,100);
    }
  }
  else if (state=="characters"){
    background(0);
    text("Choose some characters to fill your picture!",width/2,height/2);
  }
 else if(state=="details"){
   background(0);
   text("Choose some decorations to add to your pictures!",width/2,height/2);
  }
  else if(state=="gameover"){
    background(0);
    text("You're drawing is finished! Want to play again? Click the screen!",width/2,height/2);
  }
}

void mousePressed(){
  if(state=="pregame"){
    state="setting";
  }
  else if(state=="setting"){
    state="characters";
  }
 else if(state=="characters"){
    state="details";
  }
  else if(state=="details"){
    state="gameover";
  }
  else if(state=="gameover"){
    state="setting";
  }
}