void setup()
{
  size(800,600);  
  background(0);
  mapping = new Map();
  enemy1 = new Enemy1();
}

Enemy1 enemy1;
Map mapping;
ArrayList<Enemy> enemies = new ArrayList<Enemy>();

void draw()
{
  mapping.RenderMap();
  if(enemy1.goal == 0)
  {
    enemy1.EnemyRender();
    enemy1.EnemyUpdate();
  }
}