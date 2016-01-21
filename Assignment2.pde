void setup()
{
  size(800,600);  
  background(0);
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