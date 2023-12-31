/*
CIRCLE/CIRCLE
Jeff Thompson | 2015 | www.jeffreythompson.org
*/

float c1x = 0;      // circle 1 position (controlled by mouse)
float c1y = 200;
float c1r = 20;     // radius

float c2x = 600;    // circle 2 position
float c2y = 200;
float c2r = 20;

float inc=0.9;


void setup() {
  size(600,400);
  noStroke();
}


void draw() {
  background(255);
  
  // update position to mouse coordinates
   c1x +=inc;
   c2y -=map(mouseY,0,height,3,-3);
   c2x -=inc;

  
  // check for collision
  // if hit, change color
  boolean hit = circleCircle(c1x,c1y,c1r, c2x,c2y,c2r);
  if (hit) {
    fill(255,150,0);
      inc=0;
      float incy=random(-2,2);
     c1y+=incy;
     c2y+=incy;
     for(int i=0; i<50; i++){
       ellipse(c1x+random(-100)*noise(i),c1y+random(-100,80)*noise(i),6,6);
       ellipse(c2x+random(100)*noise(i),c2y+random(-100,80)*noise(i),6,6);
     }
  }
  else {
    fill(0,150,255);
  }
  ellipse(c2x,c2y, c2r*2,c2r*2);
  
  // other circle, controlled by mouse
  fill(0, 150);
  ellipse(c1x,c1y, c1r*2,c1r*2);
}


// CIRCLE/CIRCLE
boolean circleCircle(float c1x, float c1y, float c1r, float c2x, float c2y, float c2r) {
  
  // get distance between the circle's centers
  // use the Pythagorean Theorem to compute the distance
  float distX = c1x - c2x;
  float distY = c1y - c2y;
  float distance = sqrt( (distX*distX) + (distY*distY) );

  // if the distance is less than the sum of the circle's
  // radii, the circles are touching!
  if (distance <= c1r+c2r) {
    return true;
  }
  return false;
}