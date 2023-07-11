// Daniel Shiffman
// Depth thresholding example

// https://github.com/shiffman/OpenKinect-for-Processing
// http://shiffman.net/p5/kinect/

// Original example by Elie Zananiri
// http://www.silentlycrashing.net

import org.openkinect.freenect.*;
import org.openkinect.processing.*;

Kinect kinect;

// Depth image
//PImage depthImg;
gota[] gotas;
// Which pixels do we care about?
int minDepth =  20;
int maxDepth = 860;
color col=color(255);
color silC;

// What is the kinect's angle
float angle;

void setup() {
  size(640, 480);
noStroke();
  kinect = new Kinect(this);
  kinect.initDepth();
  angle = kinect.getTilt();
gotas=new gota[700];
  for( int i=0; i<gotas.length; i++){
    gotas[i]= new gota(i/4,i*width/700,10);
    gotas[i].crear();
  }
  // Blank image
  //depthImg = new PImage(kinect.width, kinect.height);
}

void draw() {
  background(0);
   
  // Draw the raw image
 PImage img=kinect.getDepthImage();
 img.loadPixels();
for( int i=0; i<gotas.length; i++){
    gotas[i].crear();
    gotas[i].caer();
   // gotas[i].rebotar();
   // gotas[i].posy-=0.01;
    
 
  // Threshold the depth image
  float aug= 5;
  for(int x=0; x<img.width ; x+=aug)
  {
    for(int y=0; y<img.height; y+=aug){
      int index= x + y *img.width;
      col =get().pixels[index];
      color cgota=get(gotas[i].posx, gotas[i].posy+1);
      if(cgota == col)
      {
        gotas[i].rebotar();
      }
     float b=brightness(img.pixels[index]);
    //float z=map(b,0,255, 200,-200);
     fill(255-b);
    // pushMatrix();
    // translate(x,y,z);
     if(b>150 && b<240){
       fill(100,b,150);
         ellipse(x,y,aug/2, aug/2);
     
       } 
    //popMatrix();
      }
  }
  }
img.updatePixels();

 
}


