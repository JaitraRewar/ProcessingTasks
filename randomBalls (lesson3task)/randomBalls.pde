// Name - Jaitra Rewar
// Date - 6th October, 2024
// Purpose - Draws random balls and rectangles


void setup(){
  size(600, 600);
  background (200, 150, 0); //background colour 
}

void draw(){
  
  // random colours given to random circles popping up at random x and y coordinates
  fill(random(255), random(255), random(255));
  
  circle(random(width), random(height), 50);
 
}

void keyPressed(){
  // forms random rectangles whenever a key is pressed with random width and height
  rect(0,0, random(width), random(height));
}


void mousePressed(){
  // refreshes the canvas whenever mouse is pressed
 background (150);
}
