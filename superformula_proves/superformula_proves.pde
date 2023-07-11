void setup(){
  size(800, 800);
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
 
  rotate(-PI/2);
  //vertices
  for(float theta = 0; theta <= 2*PI; theta +=0.01)
  {
         float rad = r(theta,
        3,//a
        -5, //b
        1+(noise(2)*mouseX/80),//m
        6,//n1
        3,//n2
        8-(noise(1)*mouseY/80)//n3
         );
   
   float x= rad* cos(theta) * 60;
   float y= rad * sin(theta) * 60;
   vertex(x,y);
  }
  endShape();
  
  
   
  
}
float r(float theta, float a, float b, float m, float n1, float n2 , float n3){
  return pow(pow(abs(cos(m * theta/4.0)/a),n2) + 
  pow(abs(sin(m * theta/4.0)/b),n3), -1.0 /n1) ;
  
}