void setup(){
  size(600, 600);
   noFill();
   stroke(255);
   strokeWeight(1);
  frameRate(12);
  
  
    }
void draw(){
 background(255); 
 translate(width/2, height/2);
 stroke(0);
 
 //primera figura
  beginShape();
 
 
  //vertices
  for(float theta = 0; theta <= 2*PI; theta +=0.01)
  {
         float rad = r(theta,
        -2.5,//a
       4, //b
      15,//m
       -0.70,//n1
        0.27,//n2
        0.9//n3
         );
   
   float x= rad * cos(theta) * 60;
   float y= rad * sin(theta) * 60;
   vertex(noise(x)+x, noise(y)+y);
  }
  endShape(CLOSE);
  
  
   
  
}
float r(float theta, float a, float b, float m, float n1, float n2 , float n3){
  return pow(pow(abs(cos(m * theta/4.0)/a),n2) + 
  pow(abs(sin(m * theta/4.0)/b),n3), -1.0 /n1) ;
  
}