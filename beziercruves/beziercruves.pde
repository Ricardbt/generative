float a=0;
float b=0;
float t=0;
 import peasy.*;

  PeasyCam cam;
void setup()
{
   cam = new PeasyCam(this, 1000);
  size(800, 800, P3D);
  background(255);
   frameRate(10);
   //translate(width/4,height/4);
  
}

void draw()
{
   //background(255);
  smooth();
noFill();
 colorMode(RGB);
stroke(50);
  for( int i =0; i<5; i++){
    bezier(
    (width/30)+(noise(width/4+random(-200,300))*100), noise(height)*height-random(50), 
    width/2+mouseY, noise(mouseX+height)*height, 
   (noise(3+width)*width)+a, (noise(height)*height)-a, 
   noise(500)*width, noise(mouseY+random(-50,50))*(height+b)
  );
  }
  
   for( int i =0; i<3; i++){
    bezier(
    (width/15)+(noise(height/2)*100),(noise(3+width)*width)+a, noise(height)*height, 
    width/5+mouseX, noise(mouseX/100)*(height+b), noise(8+random(height))*height, 
    (noise(height)*height+mouseX)-a, 
   noise(random(400)+100)*width
  );
  }
/*  colorMode(HSB);
  stroke(a*1.5,90,b*40);
  for( int i =0; i<5; i++){
    bezier(
    (width/2)+random(400), random(height), 
    width/2+mouseX, random(height), 
    random(width)-b, random(height)+a, 
    random(width), random(height+b)
  );
  }  
    
a=0.1*mouseX;
b=mouseY/100.0;
delay(300);
t+=1;
  if(t==80){
    colorMode(RGB);
    background(255);
    t=0;
  }
  */

}