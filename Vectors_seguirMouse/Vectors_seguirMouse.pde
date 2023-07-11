  PVector V,V2,V3;
    PVector mouse,mouse1, mouse2;
    PVector dir,dir2,dir3;
    PVector accel;
     PVector tempV;
    boolean n =false;
float c1x = 0;      // circle 1 position (controlled by mouse)
float c1y = 200;
float c1r = 20;     // radius

float c2x = 600;    // circle 2 position
float c2y = 200;
float c2r = 20;

float inc=0.9;
    
void setup(){
 V = new PVector(width/2,height/2);
  V2 = new PVector(width/2,height/4);
   V3 = new PVector(width/4,height/2);

  size(1200,900);
  background(255);
}


void draw(){

 background(255);
  noStroke();
  colorMode(HSB);
  for(int i=10; i<200; i+=5){
  fill(180,i,200);
   ellipse(V.x,V.y,200,200);
   ellipse(V2.x,V2.y,150,150);
   ellipse(V3.x,V3.y,50,50);
     
  }
  
    
  update(2.8,1.2,4);
  pared();
  println(V);
    println(V2);
if(n==true){
  
   V.add(tempV);
  V2.add(tempV);
   V3.add(tempV);
  
  
}
   boolean hit = circleCircle(V.x,V.y,100, V2.x,V2.y,70);
  if (hit) {
    fill(255,150,0);
      inc=0;
      float incy=random(-2,2);
     V.y+=incy;
     V2.y+=incy;
     for(int i=0; i<50; i++){
       fill(i,120,140);
       ellipse(V.x+random(-100)*noise(i),V.y+random(-100,80)*noise(i),6,6);
       ellipse(V2.x+random(100)*noise(i),V2.y+random(-100,80)*noise(i),6,6);
       PVector R1;
       R1 =PVector.random2D().normalize();
       V.add(R1);
       V2.sub(R1);
     }
  }
  else {
    fill(0,150,255);
  }
  
  
  
  
}


void update(float a,float b, float c){
mouse = new PVector(mouseX, mouseY);
mouse1 = new PVector(mouseX, mouseY);
mouse2 = new PVector(mouseX, mouseY);

   dir= mouse.sub(V).setMag(a);
    dir2= mouse1.sub(V2).setMag(b);
   dir3= mouse2.sub(V3).setMag(c);
 
    
    V.add(dir);
    V2.add(dir2);
    V3.add(dir3);
  // mouse=mouse.set(mouseX,mouseY);
}
void mouseClicked(){
tempV = new PVector(mouseX,mouseY);
tempV.set(mouseX,mouseY);
 fill(0);
 rect(tempV.x,tempV.y,80,80);
 tempV=tempV.setMag(2);

  n=true;
}
/*void mouseClicked(){
  
   PVector ranV = new PVector(noise(mouseX)*mouseX,noise(-12)*mouseY);
     PVector ranV2 = new PVector(noise(3)*mouseX,noise(2)*mouseY);
       PVector ranV3= new PVector(noise(4)*mouseX,noise(mouseY)*mouseY);
       
       ranV.set(noise(mouseX)*mouseX,noise(-12)*mouseY);
    ranV2.set(noise(3)*mouseX,noise(2)*mouseY);
     ranV3.set(noise(4)*mouseX,noise(mouseY)*mouseY);

 V.sub(ranV);
  V2.sub(ranV2);
   V3.sub(ranV3);
   
    
}*/

void pared(){
  if(V.x>=width||V.y== height){
    V.x=-V.x;
    
  }
  
  
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