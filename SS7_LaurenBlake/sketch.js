var capture1;
var capture2;
var capture3;
var capture4;
var state="Invert";

function setup(){
  createCanvas(750, 500);
  capture1 = createCapture(VIDEO);
  capture2=createCapture(VIDEO);
  capture3=createCapture(VIDEO);
  capture4=createCapture(VIDEO);
  capture1.hide();
  capture2.hide();
  capture3.hide();
  capture4.hide();
  
  
  state="Gray";
}
function preload(){
kissies=loadImage("kissies.png")  
awesome=loadImage("awesome.png")
smiley=loadImage("smiley.png")
rainbow=loadImage("rainbow.png")
donut=loadImage("donut.png")
  
  
}
function draw() {

  if (state=="Invert"){
  background(255);
  image(capture1, 0, 0, width,height);
  filter(INVERT);
  displayPictures();
  
  }
 else if (state=="Gray"){
  background(255);
  image(capture2,0,0,width,height);
  filter(GRAY);
  displayPictures();
}
else if (state=="Threshold"){
  background(255);
  image(capture3,0,0,width,height);
  filter(THRESHOLD);
  displayPictures();
}
else if (state=="Normal"){
  background(255);
  image(capture4,0,0,width,height);
  displayPictures();
}
}

 function mousePressed(){
 
   if (state=="Gray"){
     state="Threshold";
   }
   else if (state=="Threshold"){
     state="Invert";
  }
  else if (state=="Invert"){
  state="Gray";
  }
  else if (state=="Gray"){
    state="Normal";
  }
  
  
 }
 
 function displayPictures(){
   image(kissies,0,0);
   image(donut,490,0);
   image(smiley,0,360);
   image(rainbow,490,360);
   
   
   
 }


  




