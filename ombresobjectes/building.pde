//edifici
/* funcions: desplaçar, horaDelDia, construir
  caracteristiques: paretDreta, paretEsquerra, terra, sostre, altura, amplada, color

*/
class building {
 color c;
 //vertex superior esquerra
 float Ax;
 float Ay;
 //vertex superior dret
 float Bx;
 float By;
 //vertex inferior dret
 float Cx;
 float Cy;
 //vertex inferior esquerra
 float Dx;
 float Dy;
 
 int n;
float Ysostre;
float Yterra;
float Xesquerra;
float Xdreta;
 float a=1;
 float alt;
  float k=width;
 float py1 ;
  float px1;
  
   float py2 ;
  float px2=0;
  
  building(float tAx,float tAy, float tBx,float tBy ,float tCx,float tCy, float tDx,float tDy , color tc ){
    
         c= tc;
         Ax=tAx;
         Ay=tAy;
          Bx=tBx;
         By=tBy;
          Cx=tCx;
         Cy=tCy;
          
          Dx=tDx;
         Dy=tDy;
          
         
        /*Ysostre = tYsostre;
        Yterra = tYterra;
        Xesquerra = tXesquerra;
        Xdreta = tXdreta; */
          
        }
        
        void construir(){
         fill(c);
         beginShape();
         vertex(Ax, Ay);
         vertex(Bx, By);
         vertex(Cx, Cy);
         vertex(Dx, Dy);
         endShape(CLOSE);
        }
        
        void desplacar(){
          while(n==1){
           int n=1;
          alt=Yterra-Ysostre;
          n=0;
          }
          alt=+1;
          Ysostre += alt*cos(theta);
          Xesquerra+= alt*sin(theta);
          Xdreta+= alt*sin(theta);
          
          
        
    
       
           
          
        
        }
        
        
        void update(){ 
         if(a > 30){
           a=0;
         }
          a+=0.02;
          px1+=0.01;
           px2+=0.01;
        }
         
}