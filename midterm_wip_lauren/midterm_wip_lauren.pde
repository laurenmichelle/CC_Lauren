String state="pregame";

void setup(){
  size(1000,500);
}

void draw(){
 textAlign(CENTER);
 textSize(33);
  //store choices in a variable
  if (state=="pregame"){
    background(0);
     stroke(255);
    text("What to watch on Netflix Guide!",width/2,height/3);
    text("Click to start", width/2,height/2);
  }
  else if(state=="setting"){
    stroke(255);
    background(0);
    text("Are you watching with younger kids?",width/2,height/2);
    text("Yes or No",width/2, height-100);
   
  }
  else if (state=="characters"){
    background(0);
    text("What genre do you prefer?",width/2,height/2);
    text("Sci-fi, Comedy, Horror, Documentary, Drama");
    
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
  if(state=="pregame" ){
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