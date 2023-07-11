background(255);
size(800,800);
  int i = 0;
  int j = 0;
for (i=0;i<width;i=i+35){
 for (j=0;j<width;j=j+10){
     line(j, 1, j, height);
     line(1,i, width, i);
  
  }
 }