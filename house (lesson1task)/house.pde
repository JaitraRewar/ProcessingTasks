// Name - Jaitra Rewar
// Date - 6th October, 2024
// Purpose - creates a house

void setup (){
  size (400, 400);
  background (150);
}

// house X: 270, HouseY: 165
int houseX = 270;
int houseY = 165;

// sunX: 125 , sunY: 200
int sunX = 125;
int sunY = 150;

int cloudX = 100;
int cloudY = 100;

// drawHouse (int, int) -> void
// purpose: draw house at houseX, houseY
// note: the house is drawn from the top left corner
public void drawHouse (int houseX, int houseY){
// Draws House
  fill (150, 0, 0);
  stroke (0);
  rect (houseX, houseY, 105, 85);
 
  // Draws Door
  fill (255);
  stroke (0);
  rect (houseX + 39, houseY + 30, 28, 45);
 
  // Draws Door Handle
  fill (0);
  stroke (0);
  circle (houseX + 45,houseY + 52, 5);
 
  // Draws House Roof
  fill (0);
  stroke (0);
  triangle (houseX + 52.5, houseY - 20, houseX - 10, houseY, houseX + 115, houseY);
}

// drawSun (int, int) -> void
// purpose: takes in two integers and defines the values of lines and adjusted properly by adding or subtracting
public void drawSun (int sunX, int sunY){
  // Draws Sun
  fill (246, 250, 7);
  stroke (246, 250, 7);
  circle (sunX, sunY, 100);
 
  // Sun rays
  stroke (246, 250, 7);
  strokeWeight(3);
  line (sunX, sunY, sunX, sunY - 75);
  line (sunX, sunY, sunX + 33, sunY - 66);
  line (sunX, sunY, sunX + 55, sunY - 48);
  line (sunX, sunY, sunX + 66, sunY - 21);
  line (sunX, sunY, sunX - 33, sunY - 66);
  line (sunX, sunY, sunX - 55, sunY - 48);
  line (sunX, sunY, sunX - 66, sunY - 21);
}

// drawCloud(int, int) --> void
// purpose: draws two clouds at different coordiantes using circles
public void drawCloud (int cloudX, int cloudY){
  
  noStroke();
  
  fill(255);
  // draws clouds
  circle(cloudX - 5, cloudY - 5, 20);
  circle(cloudX, cloudY - 20, 20);
  circle(cloudX + 5, cloudY - 4, 20);
  circle(cloudX + 20, cloudY - 4, 20);
  circle(cloudX + 15, cloudY - 20, 20);

  
}

void draw (){
  // calls the sun method
  drawSun (125,200);
 
  // Draws Grass
  fill (55, 235, 86);
  stroke (55, 235, 86);
  rect(0,200,400,200);
  
  // calls the two methods
  drawHouse (240, 165);
  drawCloud(250, 50);
  drawCloud(200, 50);
}
