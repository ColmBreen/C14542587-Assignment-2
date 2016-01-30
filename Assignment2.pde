/*
  1. Create Variables for half way points in other three boxes.
  2. Mouse Clicked = Check which tower was selected and call function in Map class to highlight available spaces.
  3. Mouse Clicked again = Call function in relevant tower's class to check where mouse was clicked and place tower there.
  4. Make tower's shoot stuff.
*/
void setup()
{
  size(800,600);  
  background(0);
  mapping = new Map();
  enemy1 = new Enemy1();
  gameObjects.add(enemy1);
  tower1 = new Tower1();
  towerSelect = false;
  selectedTower = 0;
}

boolean towerSelect;
int count = 1;
int selectedTower;
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
  if(towerSelect == false)
  {
    for(i = 1; i < 6; i++)
    {
      if(mouseX > mapping.pos1*i && mouseX < mapping.pos1*(i+1) && mouseY < height && mouseY > mapping.pos2*5)
      {
        towerSelect = true;
        selectedTower = i;
      }
    }
  }
  else
  {
    if(selectedTower == 1)
    {
      GameObject tower1 = new Tower1();
      gameObjects.add(tower1);
      tower1.Place();
      towerSelect = false;
    }
    if(selectedTower == 2)
    {
      tower1.Place();
      towerSelect = false;
    }
    if(selectedTower == 3)
    {
      tower1.Place();
      towerSelect = false;
    }
    if(selectedTower == 4)
    {
      tower1.Place();
      towerSelect = false;
    }
    if(selectedTower == 5)
    {
      tower1.Place();
      towerSelect = false;
    }
  }
}