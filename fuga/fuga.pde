import processing.serial.*;
Serial myPort;
int val;
float alt=600;
float amp=30;
float lluny=70;
float prof= 20;
float m;
void setup(){

size(1500,700, P3D);
String portName= Serial.list()[0];
myPort=new Serial (this, portName, 9600);
}

void draw(){
  if(myPort.available() >0) {
    val=myPort.read();
      
   
      print(" valor="+m);
  }
  background(50,130,200);
  noStroke();

m=map(val, 0, 355, 0, displayWidth);

for(int i=1; i<100; i++){
pushMatrix();
translate(-m, 400, -(lluny*i)); 
rotateY(0.5);
fill(10+i*4,50+i*8,100+i*6);
box(amp, alt, (prof*i)+i);  
rotateY(-0.5);
popMatrix();
}

for(int j=1; j<100; j++){
  pushMatrix();
translate(1+m, 400, -(lluny*j)); 
rotateY(-0.5);
fill(10+j*3,50+j*6,100+j*5);
box(amp, alt, (prof*j)+j);  
rotateY(0.5);
popMatrix();


}





}