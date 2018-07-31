

ParticleSystem ps;
PImage sprite;  

void setup() {
  size(1024, 768, P2D);
  orientation(LANDSCAPE);
  sprite = loadImage("sprite.png");
  ps = new ParticleSystem(10000);

  
  hint(DISABLE_DEPTH_MASK);
} 

void draw () {
  background(255,255,255);
  ps.update();
  ps.display();
  
  ps.setEmitter(mouseX,mouseY);
  
  fill(0,255,0);
  textSize(16);
  text("Frame rate: " + int(frameRate), 10, 20);
  
}
