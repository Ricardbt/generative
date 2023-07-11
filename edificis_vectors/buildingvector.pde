class buildingVector{
   PVector altEsq;
   PVector altDret;
   PVector baiEsq;
   PVector baiDret;
  float alt;
  float ample;
  float angle;
  float sit;
    float t=0;
 buildingVector(float alt_, float amp_, float sit_, float ang_){
   alt = alt_;
   ample = amp_;
   angle = ang_;
   sit = sit_;
   
   altEsq = new  PVector(sit , height - alt);
   altDret = new  PVector(altEsq.x + ample , altEsq.y);
   baiEsq = new  PVector(altEsq.x,height);
   baiDret = new  PVector(altDret.x,height);
 }
  void build(){
    fill(100);
    beginShape();
    vertex(altEsq.x, altEsq.y);
    vertex(altDret.x , altDret.y);
    vertex(baiDret.x , baiDret.y);
    vertex(baiEsq.x , baiEsq.y);
    endShape();
  
  }
  
  void update(){
  altEsq= PVector.random2D();
    if(mouseX>0){
    altDret.x =ample+ altDret.x + ( mouseX - altDret.x );
    altEsq.x = altEsq.x +  ( mouseX - altEsq.x);
    /*
      while(t <100){
        altEsq.y-=0.5;
         altDret.y-=0.5;
       t++;*/
        }
    }
    
    void urbanitzar(float a){
   altEsq.setMag(a);
   altDret.setMag(a);
   baiEsq.setMag(a);
   baiDret.setMag(a);
   
   
    }
    
    
  }
  