class petal{
  // variables; punt inicial punt final punts mig
  PVector p_ini =new PVector();
  PVector p_fin = new PVector();
  float punts;
 PVector[] Pt = new PVector[int(punts)] ;
  float a = 0;
  float b = 0;
  int i=0;
  petal(PVector tp_ini, PVector tp_fin,  float  tpunts){
   p_ini = tp_ini;
   p_fin = tp_fin ;
   punts = tpunts;
   
 PVector[] Pt = new PVector[int(punts)] ;
      for(int i = 0; i<Pt.length; i++){
        float a = random(p_ini.x,p_fin.x);
         float b = random(p_ini.y,p_fin.y) ;
         Pt[i]= new PVector();
         Pt[i].set(a,b);
     
      // bezier(p_ini.x, p_ini.y, Pt[i].x, Pt[i].y ,Pt[i+1].x, Pt[i+1].y , p_fin.x, p_fin.y);
    };
   
      //  println(Pt[0]);
          println(p_ini);
       println(p_fin);
         println(punts);
         
   
     
  }
  
  void dibuixar(){
 float puntX1=random(width);
  float puntY1=random(height);
   float puntX2=random(width);
    float puntY2=random(height);
    i=0;
   noFill();
   stroke(random(0, 255), random(0, 255), random(0, 255));
     bezier(p_ini.x, p_ini.y, puntX1, puntY1 ,puntX2, puntY2 , p_fin.x, p_fin.y);
    
   
 
   
  }
  
 void  comprovarPunts(){
    
  }
  
  
  
  
}