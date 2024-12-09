// Name - Jaitra Rewar
// Date - 6th October, 2024
// Purpose - creates two balls (white and black) and releases white ones start from the bottom and stops at the
//           line reseting the whole process again and the black ones start from the top and stops at the
//           line reseting the whole process again


void setup(){
  size(700, 700);
  background(150);
}

// set x and y coordinates of the first and second circle
float circleX = 0;
float circleY = 700;
float circleA = 0;
float circleB = 0;

void draw(){
  
  stroke(0,255,0);
  line(0, width/2, height, width/2);
  
   // circles at the bottom in black
  fill(255);
  stroke(0);
  ellipse (circleX, circleY, 50, 50);
  circleX += 1;
  circleY -= 7;
  
  // circle reaches the middle line then goes to the right repeating the process
  if (circleY <= height/2){
    circleX += 6;
    circleY = 700;
  }
  
  // restricts to go outside of the bounds
  if (circleX > height){
    circleX = 0;
  }
  
  // circles at the top in white
  fill(0);
  stroke(255);
  ellipse (circleA, circleB,70, 70);
  circleA += 2;
  circleB += 6;
  
  // reaches the middle line and stops and repeats the process by going right
  if (circleB >= height/2){
    circleA += 1;
    circleB = 0;
  }
  
  // restricts to go outside of the bounds
  if(circleA > height){
    circleA = 0;
  }
}
