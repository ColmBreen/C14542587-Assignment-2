PImage img;

void setup()
{
  size(1000, 600);  
  background(0);
  img = loadImage("Enemy 1_1.jpg");
}

void draw()
{
  image(img, 50, 50, 100, 100);
}