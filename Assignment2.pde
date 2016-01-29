void setup()
{
  size(800,600);  
  background(0);
  mapping = new Map();
  enemy1 = new Enemy1();
  gameObjects.add(enemy1);
  tower1 = new Tower1();
  towerSelect = false;
}

boolean towerSelect;
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
/*
  1. Mouse is clicked on tower option.
  2. Map highlights to show available spaces for towers.
  2a. If no available space, revert to default state.
  3. Mouse is clicked on a space.
  3a. If mouse is clicked on another or the same tower option, revert to default state.
  4. If space is available, tower is placed in space.
*/
void mouseClicked()
{
  int i;
  float halfFirstBoxW = (((mapping.middlePath-mapping.halfLineWidth) - mapping.pos1*4)/2)+mapping.pos1*4; 
  float halfFirstBoxV = (((mapping.hrzMidPath - mapping.halfLineWidth) - mapping.halfLineWidth*3)/2) + mapping.halfLineWidth*3;
  if(towerSelect)
  {
    for(i = 1; i < 6; i++)
    {
      if(mouseX > mapping.pos1*i && mouseX < mapping.pos1*(i+1) && mouseY < height && mouseY > mapping.pos2*5)
      {
        //GameObject tower1 = new Tower1();
        //gameObjects.add(tower1);
        towerSelect = true;
      }
    }
  }
  else if(mouseX > mapping.pos1+mapping.halfLineWidth*4 && mouseX < halfFirstBoxW && mouseY < halfFirstBoxV && mouseY > mapping.halfLineWidth * 3)
  {
    GameObject tower1 = new Tower1();
    gameObjects.add(tower1);
    tower1.towerCheck[0] = true;
    towerSelect = false;
  }
}