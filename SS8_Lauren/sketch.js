var steps=[];
var stairs=[];
var distance=[];
var Day=[];
var weekly;
var stepsPic;
var stairsPic;
var distancePic;
var state="distance";


function preload(){
weekly=loadTable("creativecoding.csv");
stepsPic=loadImage("steps.png");
stairsPic=loadImage("stairs.png");
distancePic=loadImage("distance.png");
}
function setup() {
createCanvas(701,500);
for(var i=0;i < weekly.getColumnCount(); i++){
  distance[i]=float(weekly.get(i,1));
  steps[i]=float(weekly.get(i,2));
  stairs[i]=float(weekly.get(i,3));
  Day[i]=(weekly.get(i,0));
  }
  console.log(distance[0])
}


function draw() {
background(255,200,225);
  counter=0;
for(var l=50;l<=650;l+=100){
  stroke(0.5);
  textAlign(CENTER,CENTER);
  text(Day[counter],l,25);
  counter+=1;
}
for(var f=0;f<=800;f=f+100){
stroke(1);
line(f,0,f,500);
}

line(0,50,700,50);
if (state=="distance"){
moveImage=25;
moveColumn=25; 
for (var q=0; q<=distance.length;q=q+1){
for(var p=0; p<=distance[q]; p=p+0.5){
moveImage+=50;
image(distancePic,moveColumn,moveImage,50,50);
}
moveImage=25;
moveColumn+=100;

fill(255);
textSize(24);
text("How far I walked this week!",175,475);
fill(0);
textSize(14);
image(distancePic,600,465,30,30);
noStroke();
text("= 0.5 miles",660,485);
}
}
else if (state=="steps"){
moveImage=25;
moveColumn=25; 
for (var t=0; t<=steps.length;t=t+1){
for(var s=0; s<=steps[t]; s=s+1000){
moveImage+=50;
image(stepsPic,moveColumn,moveImage,50,50);
}
moveImage=25;
moveColumn+=100;

fill(255);
textSize(24);
text("How many steps I took this week!",185,475);
fill(0);
textSize(14);
image(stepsPic,600,465,30,30);
noStroke();
text(" =1000 steps",660,485);
}
  
}
else if (state=="stairs"){
 moveImage=25;
moveColumn=25; 
for (var a=0; a<=stairs.length;a=a+1){
for(var b=0; b<stairs[a]; b=b+1){
moveImage+=50;
image(stairsPic,moveColumn,moveImage,25,25);
}
moveImage=25;
moveColumn+=100;

fill(255);
textSize(24);
text("Stairs I climbed this week!",185,475);
fill(0);
textSize(14);
image(stairsPic,590,465,30,30);
noStroke();
text(" =flight of stairs",660,485);
} 
}
}

function mousePressed(){
  if (state=="distance"){
    state="steps";
  }
  else if (state=="steps"){
    state="stairs";
  }
  else if (state=="stairs"){
    state="distance";
  }
  
}
