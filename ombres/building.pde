//edifici
/* funcions: desplaçar, horaDelDia, construir
  caracteristiques: paretDreta, paretEsquerra, terra, sostre, altura, amplada, color

*/
class building {
 color c;
float Ysostre;
float Yterra;
float Xesquerra;
float Xdreta; 
  
  building(float tYsostre, float tYterra,float tXesquerra, float tXdreta, color tc){
    
        c= tc;
         Ysostre =tYsostre;
        Yterra = tYterra;
        Xesquerra = tXesquerra;
        Xdreta = tXdreta; 
          
        }
        
        void construir(){
         //fill(c);
         stroke(c);
         beginShape(TRIANGLE_STRIP);
         vertex(Ysostre,Xesquerra);
         vertex(Ysostre, Xdreta);
         
         vertex(Yterra, Xesquerra);
         vertex(Yterra, Xdreta);
         endShape();
        }
        
        void desplacar(){
          Ysostre=Ysostre+(noise(4)*mouseX/200);
           Yterra=Yterra+(noise(4)*mouseX/200);
           Xdreta = Xdreta+(noise(8)*mouseX/200);
           Xesquerra = Xesquerra+(noise(8)*mouseX/200);
        }
}