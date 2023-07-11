Car myCar1;
Car myCar2;

void setup(){
  size(800,800);
  
  myCar1= new Car(color(255,0,0),100,0,2);
  myCar2= new Car(color(0,0,255),10,0,1);
}

void draw(){
  background(112,138,144);
  
  for(int i=-50;i<width;i+=50){
    for(int j=-50; j<=height; j+=50){
      stroke(25,25,112);
      strokeWeight(3);
      fill(112,138,144);
      triangle(i,j,i+100,j-100,i+200,j);
    }
  }
  strokeWeight(7);
  line(0,height/4,width,height/4);
  line(0,height*3/4,width,height*3/4);
  
  myCar1.move();
  myCar1.display();
  myCar2.move();
  myCar2.display();
}

class Car{
  color c;
  float x;
  float y;
  float speed;
  
  Car(color tempC, float tempX, float tempY, float tempSpeed){
    c=tempC;
    x=tempX;
    y=tempY;
    speed=tempSpeed;
  }
  
  void display(){
    noStroke();
    fill(c);
    rectMode(CENTER);
    rect(x,y,20,40);
    //Wheels
    strokeWeight(2);
    stroke(0);
    fill(0);
    rect(x-10,y-10,5,10);
    rect(x+10,y-10,5,10);
    rect(x-10,y+10,5,10);
    rect(x+10,y+10,5,10);
  }
  
  void move(){
    y=y+2;
    if(y>height){
      y=0;
    }
    translate(width/2,height/2);
       rotate(radians(y));
  }
} 