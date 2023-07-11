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
  
      void lluvia(){
        for( int i=0; i<10; i++){
             ellipse(posx+poselx, posy+posely,i+6*noise(20+i),i+5 *noise(30+i));
       
      }
    
  }
  void caer(){
    posely += vel*0.5;
    
    
  }
  void rebotar(){
 
    posy=10; 

    
  
  }



}
