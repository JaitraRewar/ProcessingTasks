// Name - Jaitra Rewar
// Date - 10th October, 2024
// Purpose - switches from triangles to circles when mouse clicked and also transitions colour


boolean showTriangles = true; // Variable to track whether to show triangles or circles

void setup() {
  size(400, 500);
  background(155);
}

float squareSize = 20;

float radius = 100;

void draw() {
  noStroke();

  fill(255);
  rect(0, height/2, width, height);

  float grayColor = 0;
  float shapeColor = 255;
  // loops for y and x axis which are used for the circles/triangles
  for (int yPos = 0; yPos <= height/2; yPos += squareSize) {
    for (int xPos = 0; xPos <= width; xPos += squareSize) {

      fill(grayColor);
      square(xPos, yPos, squareSize);

      fill(shapeColor);

      // checking whether it should be triangles or circles
      if (showTriangles) {
        circle(xPos + squareSize / 2, yPos + squareSize/2, squareSize / 2);
      } else {
        triangle (xPos + squareSize / 4, yPos + squareSize /4 * 3, xPos + squareSize / 2, yPos + squareSize /4, xPos + squareSize / 4 * 3, yPos + squareSize /4 *3);
      }
    }
    grayColor += 20;
    shapeColor -= 20;
  }


  float circleColor = 15;
  float radius = 250;
  // loop for bottom pink circle
  while (circleColor <= 255) {
    fill(245, 80, 220, circleColor);
    ellipse(width/2, height /4 * 3, radius, radius);
    circleColor += 1;
    radius -= 1;
  }
}

void mousePressed() {
  showTriangles = !showTriangles;
}
