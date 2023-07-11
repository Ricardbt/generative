building edifici;
building edificiB;
building[] edificis = new building[10];
     float m;
    color col;
    float xesquerra;
    float ysostre;
    float xdreta;
    float yterra;
    float a;
    float theta;
void setup(){
  theta+=0.01;
  size(1500,900,P3D);
  // pushMatrix();
  //translate(width/4,height/4);
 //rotateZ(PI/2);
  // rotateZ(PI/3);
 noStroke();
    for(int i=0; i<edificis.length ; i++){
        m= 150;
        col = color(10,random(50,200));
        xesquerra = random(100.0,1500.0);
        ysostre = 10.0;
        xdreta = xesquerra-random(90.0,170.0);
        yterra = random( 100.0,150.0);

 
 

       float xa=  xesquerra;
       float ya=  ysostre;
        float xb=  xdreta;
       float yb=  ysostre;
        float xc=  xdreta;
       float yc= yterra ;
        float xd=  xesquerra;
       float yd= yterra ;
        
        
    edificis[i]=new building(xa,ya,xb,yb,xc,yc,xd,yd,col);

  
    
  }
   //popMatrix();
}

void draw(){
 
  // background(255);
  //edifici.construir();
  //edifici.desplacar();
  //edificiB.construir();
    //edificiB.desplacar();

   for(int i=0; i<edificis.length ; i++){
  
      
    edificis[i].construir();
    edificis[i].desplacar();
    //edificis[i].update();
     println(yterra);
     println(xesquerra);
      
          }
    

   
  
 
  

}