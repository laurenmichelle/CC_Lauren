var steps=[];
var stairs=[];
var distance=[];
var Day=[];
var weekly;
var stepsPic;
var stairsPic;
var distancePic;


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
moveImage=25;
moveColumn=25;
for (var q=0; q<=distance.length;q=q+1){
for(var p=0; p<=distance[q]; p=p+0.5){
moveImage+=50
image(distancePic,moveColumn,moveImage,50,50);
}
moveImage=25
moveColumn+=100;

fill(255);
textSize(24);
text("How far I walked this week!",175,475);
fill(0);
textSize(14);
image(distancePic,600,465,30,30)
noStroke();
text("= 0.5 miles",660,485)
}
}
