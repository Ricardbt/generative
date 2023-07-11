class polar{
  
  float theta;
  float x;
  float y;
  float r;
  float a;
  float b;
  float c;
  
polar(float temptheta, float tempx, float tempy, float tempr, float tempa, float tempb, float tempc){
   theta=temptheta;
   x=tempx;
   y=tempy;
   r=tempr;
   a=tempa;
   b=tempb;
   c=tempc;
   
   
 }
 void update_theta(){
   boolean neg=true;
     theta+=0.005;
     if(theta==360){
       theta=0;
     }
  /* 
      if(a>15){
       neg=true;
     }
     if(a<-105){
      neg=false; 
     
     }
     if(neg){
       a-=0.13;
      
     }
     else{
       a+=0.16;
     }*/
     a+=0.5;
     b+=0.5;
     c-=0.2;
     r+=0.005;
  
 }
 
 void dibuixar_cardiode(){
  
     noStroke();
     // stroke(0);
     strokeWeight(0.4);
    
     
      //funcion cardiode
      beginShape();
       for(theta=0; theta<=90; theta+=0.1){
        
          r=a * abs(cos((theta + PI )/ 2)) +  b/( abs(theta-PI)+c)  ;
          x = r*cos(theta)+width/2;
          y = r*sin(theta)+height/2;
         //ellipse(x,y,5,5);
         vertex(x,y);
        //fill(0,0,0,0.8);
         //fill(200+theta/2,150,150);
       }
       endShape();
   
    
   
   
 }
 
 void dibuixar_leminiscata(){
    fill(255);
     noStroke();
     pushMatrix();
    
    // rotate(-PI/2);
      //funcion caracola
      
       for(theta=0; theta<360; theta+=0.01){
        r=sqrt(pow(a,2)*cos(2*theta));
      
         x = r*cos(theta)+width/2;
         y = r*sin(theta)+height/2;
         ellipse(x,y,1,1);
         fill(50+theta/3,(mouseX/a)+theta,(mouseY/a)+theta);
       }
    popMatrix();
   
 }
 void dibuixar_bolaexpansiva(){
    fill(255);
     noStroke();
    // pushMatrix();
    
    // rotate(-PI/2);
      //funcion caracola
      
       for(theta=0; theta<360; theta+=0.01){
        
         r=sqrt(a*cos(pow(2,theta)));
         x = r*cos(theta)+width/2;
         y = r*sin(theta)+height/2;
         ellipse(x,y,4,4);
         fill(50+theta/3,(mouseX/a)+theta,(mouseY/a)+theta);
       }
 //   popMatrix();
   
 }
 void dibuixar_caracola(){
     fill(155);
     noStroke();
     //pushMatrix();
 
  
         
       for(theta=0; theta<360; theta+=0.02){
         r=r+2*sin(theta/2);
         x = r*cos(theta)+width/2;
         y = r*sin(theta)+height/2;
         ellipse(x,y,5,5);
         fill(100+(theta/2)%100,150,150);
       }
   // popMatrix();
 }
  void dibuixar_phylotaxis(){
    
   colorMode(HSB);
     noStroke();
   
    
      
         theta =radians( b * 137.5);
         r = c * sqrt(b);
      
         x = r * cos(theta) + width/2;
         y = r * sin(theta) + height/2;
       ellipse(x,y,map(mouseY,0,height,2,7),map(mouseY,0,height,2,7));
          //rect(x,y,map(mouseY,0,height,2,25),map(mouseY,0,height,2,25));
         //fill((theta - b) %155,215,215);
         fill(map(mouseX,0,width,100,255), 200,215);
            b=b+1;
       
  
   
 }
}