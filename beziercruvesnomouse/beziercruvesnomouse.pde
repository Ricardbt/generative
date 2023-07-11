float a=0;
float b=0;
float t=0;
float l=random(5,860);
void setup()
{
  size(800, 800);
  background(255);
   
 }

void draw()
{
  smooth();
noFill();
 colorMode(RGB);
stroke(50);
  for( int i =0; i<3; i++){
    bezier(
    (width/2)+noise(3,7)*100, noise(2,9)*height, 
    width/2*l, noise(1)*height, 
   noise(2,6)*width+a, noise(1,4)*height-a, 
      noise(2,3)*width*l, noise(1,7)*height+b
  );
  }
 /* colorMode(HSB);
  stroke(a*1.4,90,b*40);
  for( int i =0; i<5; i++){
    bezier(
    (width/2)+random(400), random(height), 
    width/2+l, random(height)+b, 
    random(width)-b, random(height)+a, 
    random(width), random(height+b)
  );
  } */ 
    
a=0.1*l;
b=l/100.0;
delay(300);
t+=1;
  if(t==80){
    colorMode(RGB);
    background(255);
    t=0;
  }
  

}