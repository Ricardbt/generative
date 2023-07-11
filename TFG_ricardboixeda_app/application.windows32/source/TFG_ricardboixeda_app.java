import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class TFG_ricardboixeda_app extends PApplet {





cuadro[] cuadros =new cuadro[60];
float r,n,m,a,b,p;

public void setup(){
  
  size(displayWidth,displayHeight);
  
   
         smooth();

 int index=0;
  for (int i=0; i<cuadros.length; i ++ ) { 
   
    cuadros[i] = new cuadro(random(width),random(height), 30,30); 
  
  }
 
}
public void draw(){
background(0);
     
  
  for(int i=0; i<cuadros.length; i++){
  
    cuadros[i].pintarcuadro(); 
    cuadros[i].update();
   
  }
   resetMatrix();
   
     
   
}


public void mousePressed(){
for(int i=0; i<cuadros.length; i++){
  
    cuadros[i].anchuracuadro-=1;
    cuadros[i].alturacuadro-=1;
  } 

  
}
public void keyPressed(){
  switch(key){
    case 'f':
       
 
for(int i=0; i<cuadros.length; i++){
  
    cuadros[i].anchuracuadro-=1;
    cuadros[i].alturacuadro-=1;
  }  
  resetMatrix();   
        
       
    break;
    case 'd':
       
 
for(int i=0; i<cuadros.length; i++){
  
    cuadros[i].anchuracuadro+=1;
    cuadros[i].alturacuadro+=1;
  }  
        resetMatrix();   
        
       
    break;
    case 'a':
              for(int i=0; i<cuadros.length; i++){
  
    cuadros[i].desordenar(); 
     
  }
     break;
    case 's':
    
    for(int i=0; i<cuadros.length; i++){
  
    cuadros[i].alcentro(); 
     
    
  }
    

    
  }
  
}
class cuadro{
float alturacuadro;
float anchuracuadro;
float Xcuadro;
float Ycuadro;
float augmentX;
float augmentY;



cuadro(float Xcuadro_c, float Ycuadro_c, float anchuracuadro_c, float alturacuadro_c ){
  Xcuadro=Xcuadro_c;
  Ycuadro=Ycuadro_c;
  anchuracuadro=anchuracuadro_c;
  alturacuadro=alturacuadro_c;
 augmentX=random(-10,10);
  augmentY=random(-10,10);

}
public void pintarcuadro(){
  rectMode(CENTER);
  noStroke();
  fill(random(1,230),random(200),random(100,255));
   rect(Xcuadro, Ycuadro, anchuracuadro, alturacuadro);
   delay(5);
  
}


public void update() {
   Xcuadro = Xcuadro+random(-10,10)+random(-2,2);
    Ycuadro = Ycuadro+random(-10,10)+random(-2,2);
   
  }
  
 
public void alcentro(){
  if(Xcuadro<width/2){
    if(Ycuadro<height/2){
      Xcuadro+=2;
      Ycuadro+=2;
    }
    if(Ycuadro>height/2){
      Xcuadro+=2;
      Ycuadro-=2;
    }
    else{
     
    }
    
  }
   if(Xcuadro>width/2){
        if(Ycuadro<height/2){
          Xcuadro-=2;
          Ycuadro+=2;
      }
        if(Ycuadro>height/2){
          Xcuadro-=2;
          Ycuadro-=2;
      }
        else{
         
      }
    
  }
  
}
public void delay(int delay)
{
  int time = millis();
  while(millis() - time <= delay);
}

public void desordenar(){
  Xcuadro=random(width-200);
  Ycuadro=random(height-200);
  for(int i=0; i<10; i++)
  Xcuadro+=1;
  Ycuadro-=1;
  delay(1);
  
}
  
}
 
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--full-screen", "--bgcolor=#666666", "--stop-color=#cccccc", "TFG_ricardboixeda_app" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
