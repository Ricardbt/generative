float mvar;
float nvar;
void setup(){
  size(800, 800);
   //noFill();
   stroke(255);
   strokeWeight(1);
  frameRate(10);
  nvar=0.2;
  mvar=0;
    }
void draw(){
 background(255); 
 translate(width/2, height/2);
 stroke(0);
 
 //primera figura
  beginShape();
 
  //vertices
  for(float theta = 0; theta <= 2*PI; theta +=0.03)
  {
         float rad = r(theta,
       5,//a
     5, //b
      mvar,//m
        nvar,//n1
       nvar,//n2
         nvar//n3
         );
   
   float x= rad* cos(theta) * 50;
   float y= rad * sin(theta) * 50;
   vertex(x,y);
  }
  endShape(CLOSE);
 mvar=mvar+0.03;
 if(mvar>=8){
   mvar=0;
   nvar+=0.1;
 }
}
float r(float theta, float a, float b, float m, float n1, float n2 , float n3){
  return pow(pow(abs(cos(m * theta/4.0)/a),n2) + 
  pow(abs(sin(m * theta/4.0)/b),n3), -1.0 /n1) ;
  
  
}