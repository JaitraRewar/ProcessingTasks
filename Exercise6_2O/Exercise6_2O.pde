// Name - Jaitra Rewar
// Date - 10th October, 2024
// Purpose - creates a series of squares, lines, circles and triangles

// set variables
int circleSize = 50;
int circleColor = 100;
int circleWidth = 300;

int triangleColor = 100;
int triangleY = 200;

int squareXPosition = 100;
int squareColor = 100;
int squareWidthLength = 100;


int lineXPosition = 150;
int lineXPosition2 = 500;
int lineYPosition2 = 800;

void setup(){
  size(1000,800);
  background(150);
}

void draw(){
  
  // Loop for drawing a series of green circles with increasing green color value
  // It starts at xPosition 400 and moves right, drawing circles at every 50 pixels
  circleColor = 0;
  for (int xPosition = 400; xPosition <= 600; xPosition += 50){
    fill(0, circleColor, 0);
    
    ellipse(xPosition, circleWidth, circleSize, circleSize);
    circleColor += 60;
  }
  
  // Loop for drawing a series of blue triangles with increasing blue color value
  // The triangles are positioned at regular intervals along the x-axis
  triangleColor = 0;
  
  for(int triangleX = 150; triangleX <= 600; triangleX += 150){
    
    fill(0,0,triangleColor);
    
    triangle(triangleX + 165, triangleY, triangleX + 130, triangleY - 120, triangleX + 90, triangleY);
    triangleColor += 60;
  }
  
  // Loop for drawing red squares on both sides of the canvas with increasing red color
  // It starts from the top and draws squares at regular intervals vertically
  squareColor = 0;
  for(int squareYPosition = 50; squareYPosition <= height/2 + 250; squareYPosition += 100){
    
    fill (squareColor, 0, 0);
    square(squareXPosition - 50, squareYPosition, squareWidthLength);
    square(squareXPosition + 750, squareYPosition, squareWidthLength);
    squareColor += 40;
    
  }
  
  // Loop for drawing diagonal lines with increasing grayscale color values
  // The lines are drawn diagonally from left to right with a stroke that changes color each iteration
  int lineColor = 0;
  for (int lineYPosition = 50; lineYPosition <= height/2 + 350; lineYPosition += 50){
    
    stroke(lineColor);
    line(lineXPosition, lineYPosition, lineXPosition2, lineYPosition2);
    line(lineXPosition + 700, lineYPosition, lineXPosition2, lineYPosition2);
    lineColor += 15;
    stroke(0);
  }
  
  
}
  
