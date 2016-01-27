void setup()
{
  size(800,600);  
  background(0);
  mapping = new Map();
  enemy1 = new Enemy1();
  gameObjects.add(enemy1);
  tower1 = new Tower1();
}

int count = 1;
Tower1 tower1;
Enemy1 enemy1;
Map mapping;
ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();

void draw()
{
  mapping.RenderMap();
  tower1.Render();
  for(int i = gameObjects.size() - 1 ; i >= 0   ;i --)
  {
     GameObject go = gameObjects.get(i);
     if(go instanceof Tower1)
     {
       go.Update();
     }
     else
     {
       go.Render();
       go.Update();
     }
  }
  if(frameCount % 120 == 0 && count < 10)
  {
    GameObject enemy1 = new Enemy1();
    gameObjects.add(enemy1);
    count++;
  }
}

void mouseClicked()
{
  int i;
  for(i = 1; i < 6; i++)
  {
    if(mouseX > mapping.pos1*i && mouseX < mapping.pos1*(i+1) && mouseY < height && mouseY > mapping.pos2*5)
    {
      tower1.towerCheck[i-1] = true;
    }
  }
}