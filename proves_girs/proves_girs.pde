

float a=0;
float b=0;
float i=0;
void setup(){
  size(650,650);
  rectMode(CENTER);
}
void draw(){
  background(0);
  noStroke();
  fill( 100,200,150);
  
translate(width/2,height/2);
  rotate(-i/100);

    rect(50+a,50+b,50,50);
    rect(150+a,50+b,50,50);
    rect(50+a,150+b,50,50);
    rect(-50+a,50+b,50,50);
    rect(50+a,-50+b,50,50);
  
 
  resetMatrix();
  i++;
}

void centre(){
  if(a<0){
    a=1;
  }
  else if(a>600){
    a--;
  }
  
}
