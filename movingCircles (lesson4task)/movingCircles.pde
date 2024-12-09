// Name - Jaitra Rewar
// Date - 6th October, 2024
// Purpose - two circles cross each other with different diameters from two different points

// sets variables to x and y coordinates and also the diameter of the first circle
float circleX = 0;
float circleY = 0;
float diameter1 = 20;

// sets variables to x and y coordinates and also the diameter of the second circle
float circleA = 350;
float circleB = 700;
float diameter2 = 100;

void setup() {
  size(700,700);
  background(150);
}

void draw() {
  // draws first circle from the top left corner eventually going to the bottom right.
  // increasing in diameter
  ellipse(circleX, circleY, diameter1, diameter1);
  circleX = circleX + 2;
  circleY = circleY + 2;
  diameter1 = diameter1 + 0.3;
  
  // draws second circle from the middle most point of the canvas (from the bottom) and 
  // eventually going to the top, decreasing in diameter
  ellipse(circleA, circleB, diameter2, diameter2);
  circleA = circleA + 0.5;
  circleB = circleB - 6;
  diameter2 = diameter2 - 0.5;
  
}
