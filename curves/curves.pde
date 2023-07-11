float a= 10;
float b= 20;
float c=50;
/*afegir serial
import processing.serial.*;
Serial myPort;
int val;*/
float m;

void setup(){
size(1000,1000,P3D);
noStroke();
/*String portName= Serial.list()[0];
myPort=new Serial (this, portName, 9600);*/
}
void draw(){
  
  
 /* if(myPort.available() >0) {
    val=myPort.read();
      
   m=map(val, 0, 255, 0, 800);
      print(" valor="+m);
  }*/
  m=random(1,700);
  a+=m/60;
b+=m/70;
c+=m/80;
  
  if ( b>250 ){
         a= random((m/70)+mouseX);
        b= random((m/80)+mouseY);
         c=random((m/90)+mouseY);
  }
  translate(random(-m,m),random(-m,2*m),random(-m,m/2));
  for(int j=1;j<5;j++){
    fill(c,b,a);
curve(500.0+a, 20.0, 20.0+b, 100.0+a, 80.0+b, 50.0, 200.0-c, 200.0+a);
curve(-200+c,200+a,0+b,500,400-c,100,800, 600-a);
curve(200+b,800-c,0,-100,200+a,140,400, 600);

}
translate(random(-m,m*2),random(-800,500),random(-400,200));
  for(int k=1;k<5;k++){
    fill(b,a,c);
curve(500.0+a, 20.0, 20.0+b, 100.0+a, 80.0+b, 50.0, 200.0-c, 200.0+a);
curve(-500+c,300+a,0,500-b,200+c,100,800, 600-a);
curve(300+b,400-c,0,-200,200+a,140,400+b, 600);

}
 }
