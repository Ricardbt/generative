buildingVector edifici;

void setup(){
  size(600,400);
  background(0);
  edifici = new buildingVector(300,150, width/2, 0);
}

void draw(){
    background(0);
  edifici.build();
  edifici.update();
}