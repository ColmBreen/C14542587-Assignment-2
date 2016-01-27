void setup()
{
  size(800,600);  
  background(0);
  mapping = new Map();
  enemy1 = new Enemy1();
  tower1 = new Tower1();
}

Tower1 tower1;
Enemy1 enemy1;
Map mapping;
ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();

void draw()
{
  //for(int i = gameObjects.size() - 1; i >= 0; i--)
  //{
  //  GameObject go = gameObjects.get(i);
  //  go.Update();
  //  go.Render();
  //}
  mapping.RenderMap();
  //if(frameCount % 120 == 0)
  //{
  //  GameObject enemy1 = new Enemy1();
  //  gameObjects.add(enemy1);
  //}
  if(enemy1.goal == 0)
  {
  enemy1.Render();
  gameObjects.add(enemy1);
  enemy1.Update();
  }
  tower1.Render();
}