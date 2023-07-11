class zone{
  int x;
  int y;
  int s;
  color a;
  int px;
  int py;
  zone (int x0,int y0,int s0){
    x=x0;
    y=y0;
    s=s0;
  }
  color average (){
    int i;
    int j;
    float ared=0;
    float agreen=0;
    float ablue=0;
    for (i=x;i<x+s;i++){
      for(j=y;j<y+s;j++){
        ared+=dotsred[i][j];
        agreen+=dotsgreen[i][j];
        ablue+=dotsblue[i][j];
      }
    }
    ared=ared/(s*s);
    agreen=agreen/(s*s);
    ablue=ablue/(s*s);
    println("x="+str(x)+" y="+str(y));
    println("media"+str(ared)+","+str(agreen)+","+str(ablue));
    return color(ared,agreen,ablue);
  }
  boolean check(){
    println("x"+str(x));
    println("y"+str(y));
    println("s"+str(s));
    color c;
    c=this.average();
      for (i=x;i<x+s;i++){
        for(j=y;j<y+s;j++){
          if(sqrt(sq(dotsred[i][j]-red(c))+sq(dotsgreen[i][j]-green(c))+sq(dotsblue[i][j]-blue(c)))>tol){
            println ("false");
            return false;
           
          } 
        }
      }
      println("true");
      for (i=x;i<x+s;i++){
        for(j=y;j<y+s;j++){
          for (k=0;k<8;k++){
            for (l=0;l<8;l++){
              px=8*i+k;
              py=8*j+l;
              set(px,py,c);         
            }
          }    
        }
      }
      println("true");
    return true;
  }
  void paint(){
    boolean result;
    zone c1;
    zone c2;
    zone c3;
    zone c4;
    result=this.check();
    if (!result){// divide in our squares
      if (s>8){
        c1=new zone(x,y,s/2);
        c1.paint();
        c2=new zone(x+s/2,y,s/2);
        c2.paint();
        c3=new zone(x,y+s/2,s/2);
        c3.paint();
        c4=new zone(x+s/2,y+s/2,s/2);
        c4.paint();
      }
    }
  }
  void cover(){
  }
}
// variables
int count;
color cp;
float tol=80;
float cpred=0;
float cpblue=0;
float cpgreen=0;
int i,j,k,l,x,y;
float[][] dotsred = new float[128][128];
float[][] dotsgreen = new float[128][128];
float[][] dotsblue = new float[128][128];
PImage img;
boolean result;
zone total;
void setup (){
  size(1024,1024);
}
void draw (){
  img = loadImage("suit-portrait.jpg");
  image(img, 0, 0);
  //small squares
  for (i=0;i<128;i++){
    for (j=0;j<128;j++){
      for (k=0;k<8;k++){
        for (l=0;l<8;l++){
          x=8*i+k;
          y=8*j+l;
          cp=get(x,y);
          cpred+=red(cp);
          cpgreen+=green(cp);
          cpblue+=blue(cp);
        }
      }
    cpred=cpred/(8*8);
    cpgreen=cpgreen/(8*8);
    cpblue=cpblue/(8*8);
    dotsred[i][j]=cpred;
    dotsgreen[i][j]=cpgreen;
    dotsblue[i][j]=cpblue;
      for (k=0;k<8;k++){
        for (l=0;l<8;l++){
          x=8*i+k;
          y=8*j+l;
          cp=color(cpred,cpgreen,cpblue);
          set(x,y,cp);         
        }
      }
      cpblue=0;
      cpgreen=0;
      cpred=0;
    }
  }
  //big squares
  total=new zone(0,0,128);
  total.paint();
 
  noLoop();
} 