void setup()
{
  size(1000, 600);  
  background(0);
  img = loadImage("Enemy 1_1.jpg");
  mapping = new Map();
  enemies = new Enemy();
}

Map mapping;
Enemy enemies;

void draw()
{
  mapping.RenderMap();
  enemies.EnemyRender();
}