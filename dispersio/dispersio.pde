float n = 0;
 float a=1;
void setup(){
  size(600,600);
  background(255);
  stroke(255);
   strokeWeight(3);
}
 
void draw(){
 
  n = random(360) + 0.05;
  a= a + 0.05;
  stroke(random(130)+a*5,10+a*5,random(200)+a*5);
  for(float i=1;i<5000;i++){
  point(width/2,height/2);


  translate( cos(n) * (random(20,50)), sin(n) * (random(20,50)*a));
    
  
  
  }
  
  for(float j=1;j<5000;j++){
  point(width/2,height/2);


  translate( sin(n) * (random(30,60)), cos(n) * (random(30,60)*a));
    
  
  
  }
}