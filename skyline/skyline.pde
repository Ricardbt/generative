float a=0;
float b=0;
float j=0;
float i=0;
float posX=0;
float posY =500;
  boolean dalt=true;
float ran=0;
float antY=0;
void setup(){
 // background(0);
  background(255);
  size(displayWidth,displayHeight);
  frameRate(10);
}
void draw(){
  rectMode(CENTER);
  ran=0;
 // fill(100,200,80);
 fill(0);
  noStroke();

 if(a==1){
 ran=int(random(30,100));
     for(j=0; j<ran; j++){
    posX+=1;

      ellipse(posX, posY,  2,2);
     }
     a=2;
     antY=posY;
       //fill(255,255,84);
       for(j=0; j<35; j+=5){
     rect(posX-ran/3, antY+(ran/5)+j*3, 6,8);
     
       }
          for(j=0; j<35; j+=5){
     rect(posX-(ran-(ran/3)), antY+(ran/5)+j*3, 6,8);
     
       }
  }
    //fill(100,200,80);
 if(dalt==false){
 ran=int(random(50,200));
   for(i=0; i<ran; i++){
     posY+=1;
    
      ellipse(posX, posY,  1,3);
      }
  dalt=true;
  a=1;
 }
  if(a==1){
 ran=int(random(5,30));
     for(j=0; j<ran; j++){
    posX+=1;

      ellipse(posX, posY,  1,1);
     }
     a=2;
  }
 if(dalt==true){
   ran=int(random(50,200));
   for(i=0; i<ran; i++){
     posY-=1;
      ellipse(posX, posY,  2,2);
      }
  dalt=false;
    a=1;
 }


 if(posX>width){
   
    a=0;
b+=1;
 j=0;
 i=0;
 posX=0;
 posY =random(500, 800);
 dalt=true;
 ran=0;
  //background(0); 
   delay(50);
   
 }
 

  
  if(b==5){
  //background(0);
  background(255);
  b=0;
  }  
    
  
    
}