//building edifici;
building[] edificis = new building[10];
void setup(){
 background(255);
  size(1000,800);
  print(edificis.length);
  //edifici = new building(200,100,300,500,5);

  for(int i=0  ; i>edificis.length ; i++){
    edificis[i] = new building(50*i, 70*i, 40*i, 20*i, 5*i);
  }
  
   for(int i=0  ; i>edificis.length ; i++){
    edificis[i].construir();
   
    }
}

void draw(){

  
  //edifici.construir();
  //edifici.desplacar();
 
 
 
}