import ch.bildspur.realsense.*;

RealSenseCamera camera = new RealSenseCamera(this);

void setup()
{
  size(640, 480);
  
  // display second IR stream
  camera.enableIRStream(640, 480, 30);
  camera.start();
}

void draw()
{
  background(0);
  
  // read frames
  camera.readFrames();
  
  // show color image
  image(camera.getIRImage(), 0, 0);
}
