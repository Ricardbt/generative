float a,b,c,d,n,x,y, yn,xn,z,zn;



void setup(){
  //a = -1.7, b = 1.8, c = -1.9, d = -0.4 
a = 0.970;
b = -1.899;
c = 1.381;
d = -1.506;
/*a = -1.7;
b = 1.8;
c = 1.9;
d = -0.4;*/

zn=300;
xn=500;
yn=300;
size(800,800,P3D);
background(255);
noFill();
}
void draw(){
      translate(width/2,height/2);
    
    x= (sin(a * yn) + c * cos(a * xn))*120;
    y= (sin(b * xn) + d * cos(b * yn))*120;
     
    z = (sin(c * xn) + a * cos(c * zn) )*120;
   //ellipse(x,y,1,1);
   //rotateY(radians(z));
       stroke(x,y,z);

for(int i=0; i<100; i++){
   point(x+i,y+i,z+i);
   
} 



 
 
    xn+=0.01;
    yn+=0.01;
    zn+=0.01;
}