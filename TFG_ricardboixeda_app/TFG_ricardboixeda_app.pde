



cuadro[] cuadros =new cuadro[60];
float r,n,m,a,b,p;

void setup(){
  
  size(displayWidth,displayHeight);
  
   
         smooth();

 int index=0;
  for (int i=0; i<cuadros.length; i ++ ) { 
   
    cuadros[i] = new cuadro(random(width),random(height), 30,30); 
  
  }
 
}
void draw(){
background(0);
     
  
  for(int i=0; i<cuadros.length; i++){
  
    cuadros[i].pintarcuadro(); 
    cuadros[i].update();
   
  }
   resetMatrix();
   
     
   
}


void mousePressed(){
for(int i=0; i<cuadros.length; i++){
  
    cuadros[i].anchuracuadro-=1;
    cuadros[i].alturacuadro-=1;
  } 

  
}
void keyPressed(){
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