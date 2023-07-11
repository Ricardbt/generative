int a=100;
int b=15;
int c=100;
void setup(){
 size(800,800,P3D);
 frameRate(25);
}

void draw(){

  background(0);
  lights();
    noStroke();
    pushMatrix();
    fill(150,120,50);
    translate(400, height/2, 0);
     translate(sin(b)*50,  cos(c)*50, cos(c)*50 );
     delay(65);
   
    sphere(a/2);
    popMatrix();
    
      pushMatrix();
      fill(100,20,150);
    translate(400, height/2, 0);
     translate(-sin(b)*250,  cos(c)*150, -cos(c)*100 );
     delay(55);
   
    sphere(a);
    popMatrix();
  b++;
  c++;
}
