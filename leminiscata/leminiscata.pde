float theta;
float a=150;
float x;
float y;
float r;
boolean neg=false;
void setup(){
  size(800,800);
}

void draw(){
 
fill(255);
     noStroke();
   
   
    
   
      //funcion leminiscata
        pushMatrix();
       for(theta=0; theta<360; theta+=0.001){
         r=sqrt(pow(a,2)*cos(2*theta));
         x = r*cos(theta)+width/2;
         y = r*sin(theta)+height/2;
         ellipse(x,y,1,1);
         fill(100+theta/2,150,150);
       }
    popMatrix();
    
   
     if(a>15){
       neg=true;
     }
     if(a<-35){
      neg=false; 
     }
     if(neg){
       a-=1;
     }
     else{
       a+=1;
     }
     println(a);
}