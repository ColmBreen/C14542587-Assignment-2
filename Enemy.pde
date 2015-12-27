PImage img;
class Enemy
{
  
  Enemy()
  {
    img = loadImage("Enemy 1_1.jpg");
    
  }
  
  void EnemyRender()
  {
    imageMode(CENTER);
    image(img, width/2, height-(height/20), 50, 50);
  }
}