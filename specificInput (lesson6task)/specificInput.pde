// Name - Jaitra Rewar
// Date - 6th October 2024
// Purpose - Practicing the key commands and conditional statements using,
//           keys 'r', 'g', 'b', 'Enter', '+', '-' all doing something, 
//           as well as when clicked the mouse


// sets variables for circle color change and also for the strokeweight of the circle
color circlecolor = color(0);
int strokeWeightcolor = 5;

void setup(){
  size(700, 700);
  background(150);
}

void draw(){
  background(150);
  updateCircleStroke();
  increaseDecreaseStroke();
  // makes the stroke black when mouse is pressed or else it stays the same and remains white
  fill(circlecolor);
  strokeWeight(strokeWeightcolor);
  ellipse(width/2, height/2, 200, 200);
}

// updateCircleStroke() --> void
// purpose: sets/changes the stroke colour if/when mousePressed
public void updateCircleStroke(){
  if (mousePressed){
    stroke(0);
  } else{
    stroke(255);
  }
}

// increaseDecreaseStroke() --> void
// purpose: changes the strokeweight according to the key pressed
public void increaseDecreaseStroke(){
  // checks if the key is + or - and sets the stroke weight accordingly
  if (keyPressed){
  if (key == '+'){
    if(strokeWeightcolor <= 20){
      strokeWeightcolor += 2;
    }
  } else if (key == '-'){
    if(strokeWeightcolor >= 5){
      strokeWeightcolor -= 2;
    }
  }
  }
}

void keyPressed(){
  // specifies keys for each specific color and also decreases or increases the weight based on the strokeWeight.
  if (key == 'r'|| key == 'R') {
    circlecolor = color(255, 0, 0);  // Red fill
  } else if (key == 'g'|| key == 'G') {
    circlecolor = color(0, 255, 0);  // Green fill
  } else if (key == 'b'|| key == 'B') {
    circlecolor = color(0, 0, 255);  // Blue fill
  } else if (key == ENTER) {
    circlecolor = color(0);  // Black fill
  }
}
