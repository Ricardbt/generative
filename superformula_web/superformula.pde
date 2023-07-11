void setup(){
  size(1200, 500);
   //noFill();
   stroke(255);
   strokeWeight(2);
  frameRate(10);
 // colorMode(HSB);
  fill(0,0,0,0);
  
    }
void draw(){
 background(255); 
 translate(width/2, height/2);
 stroke(mouseX,mouseY, 100);
 
 //primera figura
  beginShape();
  //fill(mouseX,mouseY, 100);
  //vertices
  for(float theta = 0; theta <= 2*PI; theta +=0.1)
  {
         float rad = r(theta,
        mouseY/100.0,//a
       mouseX/100.0, //b
        random(20),//m
        5,//n1
       4,//n2
         2//n3
         );
   
   float x= rad* cos(theta) * 50;
   float y= rad * sin(theta) * 50;
   vertex(x,y);
  }
  endShape(CLOSE);
  translate(300,150);
  //segona figura
       // noStroke();
         beginShape();
        //fill(mouseX/50,120, mouseY/50);
        //vertices
        for(float theta = 0; theta <= 2*PI; theta +=0.1)
        {
         float rad = r(theta,
        10,//a
           mouseY/100.0,//b
       mouseX/20.0,//m
       random(50),//n1
       4,//n2
         2//n3
         );
         float x= rad* cos(theta) * 50;
         float y= rad * sin(theta) * 50;
         vertex(x,y);
  }
  endShape(CLOSE);
  
    translate(-700,-100);
    //tercera figura
       // noStroke();
         beginShape();
        //fill(200,120, mouseY/50);
        //vertices
        for(float theta = 0; theta <= 2*PI; theta +=0.1)
        {
         float rad = r(theta,
        10,//a
           mouseY/100.0,//b
       random(100),//m
       random(50),//n1
       4,//n2
         2//n3
         );
         float x= rad* cos(theta) * 50;
         float y= rad * sin(theta) * 50;
         vertex(x,y);
  }
  endShape(CLOSE);
  
}
float r(float theta, float a, float b, float m, float n1, float n2 , float n3){
  return pow(pow(abs(cos(m * theta/4.0)/a),n2) + 
  pow(abs(sin(m * theta/4.0)/b),n3), -1.0 /n1) ;
  
}