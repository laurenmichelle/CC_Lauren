function preload() {
  firearms=loadTable("firearms2014.csv","header");
  
}

function setup(){
  createCanvas(1400,800);
  background(255);
  //printing out data to the console
  
  //how many rows do I have?
  console.log(firearms.getRowCount());
  
  //how many columns do I have?
  console.log(firearms.getColumnCount());
  //printing the states
  console.log(firearms.getColumn("STATE"))
  
  //assign values to arrays from each value on the table
  
}


function draw(){
  
}
