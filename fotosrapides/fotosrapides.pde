Integer a=0;
Integer x=0;

PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage[] imagenes= {img1,img2,img3,img4,img5,img6};
void setup(){
  size(380,430);
imagenes[0]= loadImage("soliusjulio1.jpg");
imagenes[1]= loadImage("soliusjulio2.jpg");
imagenes[2]= loadImage("soliusjulio3.jpg");
imagenes[3]= loadImage("soliusjulio4.jpg");
imagenes[4]= loadImage("soliusjulio5.jpg");
imagenes[5]= loadImage("soliusjulio6.jpg");
print(imagenes[0]);
frameRate(50);
}
void draw(){
 x=x+1;
  if(x>40){
   a=a+1;
   x=0;
  } 
  if(a==6){
      a=0;
    }
  
image(imagenes[a],0,0);
    
}
