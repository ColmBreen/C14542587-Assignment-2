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
  int trueCheck = 0;
  for(i = 0; i < 5; i++)
  {
    if(tower1.towerCheck[i] == true)
    {
      trueCheck = 1;
    }
  }
  if(trueCheck != 1)
  {
    for(i = 1; i < 6; i++)
    {
      if(mouseX > mapping.pos1*i && mouseX < mapping.pos1*(i+1) && mouseY < height && mouseY > mapping.pos2*5)
      {
        GameObject tower1 = new Tower1();
        gameObjects.add(tower1);
        tower1.towerCheck[i-1] = true;
        //tower1.Update();
      }
    }
  }
  else if(mouseX > tower1.pos1+(mapping.halfLineWidth*4) && mouseX < tower1.hafFirSqr && mouseY < tower1.hafFirVer && mouseY > tower1.halfLineWidth*3)
  {
    println("Yo");
    tower1.towerPlaced[0] = true;
    for(i = 0; i < 5; i++)
    {
      tower1.towerCheck[i] = false;
    }
  }
}