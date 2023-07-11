//crear variables a partir de dades personals//

float x,y;

float born=1987;
float age=27;
float weight= 98.8;
float tall=1.90 ;
float brothers= 3;
float feet=45;
float house=52;
float couple=26;
float namechar=22;


//crear cadascuna de les rodones a partir de les variables//
void riky(){
  noStroke();
  fill(weight,weight+house,60,40); 
 ellipse(house,height/2,house+age,house+age);

}

void rikya(){
  noStroke();

  fill(130+tall,80,160-brothers,60); 
 ellipse(width-house*3,height-house*5,house+tall,house+tall);

}

void rikyb(){
  noStroke();
  fill(30+brothers,180,200,20); 
 ellipse(width/2,height/2,2*age+couple,2*age+couple);

}
void rikyc(){
  noStroke();
  fill(150+tall,180,100,40); 
 ellipse(width/4,height/3,tall*4,tall*4);

}
void rikyc2(){
  noStroke();
  fill(50,80,100,50); 
 ellipse(width/2+200,born/3,age+brothers,age+brothers);

}
void rikyb2(){
  noStroke();
  fill(100,80,160,50); 
 ellipse(width/3,height-300, tall+namechar*2,tall+namechar*2);

}


void rikyd(){
  noStroke();
  fill(255-age,80+tall,160,60); 
 ellipse(width/4,namechar*3, tall+namechar*4,tall+namechar*4);

}

void rikyd2(){
  noStroke();
  fill(255-tall,255-tall,209,25); 
 ellipse(width/4,height/2, born,born);

}


//fer un setup amb les caracteristiques del programa//
void setup(){
size(displayWidth-500,displayHeight-400);

frameRate(50);
}



//crear el programa//
void draw(){
  

  background(float(mouseX)+tall,namechar+age,float(mouseY)+tall);
 tall=tall+0.2;
  age=age+0.5;
  x=x+2.0;
  y=y+2.6; 
  if(age>width/2||tall>height/2)
  {
    age=-age;
   tall=-tall;
 
  }
  if(x>width||y>height)
  {
    x=-house;
   y=-house;
 
  }


translate(x,y);
riky();
rikya();
rikyb();
rikyc();
rikyc2();
rikyd();
rikyb2();
rikyd2();
translate(-2*x,-2*y);
rikya();
rikyb();
rikyc();
rikyc2();
rikyd2();
rikyd();
translate(x,-3*y);
riky();
rikyc();
rikyc2();
rikyb2();
rikyd();
translate(x,y);
rikyc();
riky();
rikyc2();
rikya();
rikyd();
rikyd2();
translate(x,y);
riky();
rikyb();
rikya();
rikyc();
rikyc2();
rikyb2();
rikyd();
rikyd2();
}





