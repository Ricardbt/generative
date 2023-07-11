class gota{
int vel, posx, posy;
int poselx, posely;
 gota(int vt, int pxt, int pyt){
   vel=vt;
   posx=pxt;
   posy=pyt;
    
 }
  void crear(){
   
    noStroke();
   
    fill(20,100,200);
   
   ellipse(posx+poselx, posy+posely, 3, 4 *noise(30));
  }
  
     
    

  void caer(){
    posely += random(2,vel)*0.7;
    
    
  }
  void rebotar(int paramX){
     if(posy==paramX){
        posy=10; 
    
     }
  
  }



}
