// Name - Jaitra Rewar
// Date - 6th October, 2024
// Purpose - creates a moving ball

void setup() {
  size(500, 500);
  background(150);
}

void draw() {
  // everytime it loops back so that we get the recent result
  background(150);
  
  // sets the first two values (x, y coordinates) as my mouse makes 
  // its x and y coordinates wherever I move my mouse
  ellipse(mouseX, mouseY, 50, 50);
}
