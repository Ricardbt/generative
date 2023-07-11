 petal pet;
   PVector a = new PVector(0,0);
   PVector z = new PVector(width,height);
 float x1, y1, x2, y2, x3, y3, x4, y4; 
  PVector vec = new PVector(mouseX, mouseY);
  void setup(){
   size(1200,900);
  x1=0;
  y1=0;
  x2=100;
  y2=200;
  x3= 300;
  y3= 400;
  x4= 600;
  y4 = 100;
  background(0);
 
           pet = new petal(a,z,2);
  }
  void draw(){
    
    vec.set(mouseX, mouseY);
    pet.dibuixar();
    //pet.p_fin.sub(noise(-mouseX),noise( -mouseY));
    pet.p_ini.set(mouseX, mouseY);
     pet.p_fin.set(mouseX, mouseY);
    if(x1>200){
    background(0);
   
    x1=0;
    }
   
    x1++;
  }