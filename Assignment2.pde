void setup()
{
  size(800,600);  
  background(0);
  mapping = new Map();
  enemy1 = new Enemy1();
}

Enemy1 enemy1;
Map mapping;
ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();

void draw()
{
  mapping.RenderMap();
  if(enemy1.goal == 0)
  {
   enemy1.Render();
   enemy1.Update();
  }
}