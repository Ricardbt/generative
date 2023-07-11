import org.openkinect.freenect.*;
import org.openkinect.freenect2.*;
import org.openkinect.processing.*;
import org.openkinect.tests.*;


Kinect kinect;
void setup(){
  size(420,525, P3D);
kinect =new Kinect(this);
}
void draw(){
background(0);
int skip=20;
int[] depth = kinect.getRawDepth();
stroke(255);
strokeWeight(2);
beginShape(POINTS);

for(int x=0; x<kinect.depthWidth;x+=skip){
  for(int y=0; y<kinect.depthWidth;y+=skip){
    int offset = x+y *kinect.depthWidth;
    int d =depth[offset];
    
    PVector pont =depthToPontCloudPos(x,y,d);
    
    vertex(x,y,0);
  }
 } 
 endShape();
}

PVector depthToPontCloudPos(int x, int y, float depthValue) {
 PVector point =new PVector();
 point.z=(depthValue);
 point.x=(x-CameraParams.cx)*point.z/CameraParams.fx;
  point.y=(y-CameraParams.cy)*point.z/CameraParams.fy;
  return point;
  
}