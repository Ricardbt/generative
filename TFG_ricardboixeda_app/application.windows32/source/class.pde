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
void pintarcuadro(){
  rectMode(CENTER);
  noStroke();
  fill(random(1,230),random(200),random(100,255));
   rect(Xcuadro, Ycuadro, anchuracuadro, alturacuadro);
   delay(5);
  
}


void update() {
   Xcuadro = Xcuadro+random(-10,10)+random(-2,2);
    Ycuadro = Ycuadro+random(-10,10)+random(-2,2);
   
  }
  
 
void alcentro(){
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
void delay(int delay)
{
  int time = millis();
  while(millis() - time <= delay);
}

void desordenar(){
  Xcuadro=random(width-200);
  Ycuadro=random(height-200);
  for(int i=0; i<10; i++)
  Xcuadro+=1;
  Ycuadro-=1;
  delay(1);
  
}
  
}
 
