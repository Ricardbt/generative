// import peasy.*;

 // PeasyCam cam;

 polar[] cors= new polar[3];
 polar pol;
 polar pol2;
 float theta =0;
  float x = 100;
  float y = 100;
  float r =80;
  float a= 50;
  float b = 50;
  float c = 15;
void setup()
{
  smooth();
//   cam = new PeasyCam(this, 800);
   background(255);
   size(900,800);
 // translate(1000,height/2);
  
/*for(int i=0; i<cors.length ; i++){
    translate(width/2,-height/4,0);
 cors[i] = new polar(theta,x,y,r,a,b,c);
 }*/
 
 pol= new polar(theta,x,y,r,a,b,c);
 pol2 = new polar(theta,x,y,r,a,b,c);
}
void draw()
{
  
 translate(-200,0); 

//leminiscata
 pol.update_theta();
  pol.dibuixar_bolaexpansiva();
  pol.dibuixar_phylotaxis();
 pol.dibuixar_leminiscata();

  pol.dibuixar_caracola();
 translate(400,0); 
 pol2.dibuixar_phylotaxis();
 pol2.dibuixar_cardiode();

 
   //cardiode
 /* for(int i=0; i<cors.length ; i++){
    translate(random(-200,250),random(-190,290),random(-90,90));
   cors[i].dibuixar_cardiode();

  //cors[i].update_theta();
 
 }*/
 
}