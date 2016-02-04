/*
  1. Create Bullets
  2. Add health and cost to enemies and towers
  3. Finish placing towers
  4. Apply highlight for available areas for towers
  5. Create 3 more types of enemies and 4 more types of towers
  6. Make sprites look better
  7. Add a menu and pause screen
  8. Maybe add sound
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
  gold = 100;
}

int gold;
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
  textAlign(CENTER);
  textSize(30);
  text("$" + gold, (mapping.pos1/2), (mapping.pos2*5) + (mapping.pos2/2));
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
  for(int i = gameObjects.size() - 1; i >= 0; i--)
    {
    GameObject go = gameObjects.get(i);
     if(go instanceof Tower1)
     {
        for(int j = gameObjects.size() - 1; j >= 0; j--)
        {
          GameObject other = gameObjects.get(j);
          if(other instanceof Enemy1)
          {
            if(go.centre.dist(other.starPos) < 90)
            {
              if(frameCount % 60 == 0)
              {
                other.health -=2;
              }
            }
          }
        }
      }
    }
  if(frameCount % 120 == 0 && count < 1)
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
  boolean poor = false;
  if(towerSelect == false)
  {
    for(i = 1; i < 6; i++)
    {
      if(mouseX > mapping.pos1*i && mouseX < mapping.pos1*(i+1) && mouseY < height && mouseY > mapping.pos2*5 && gold >= (i * 50))
      {
        towerSelect = true;
        selectedTower = i;
      }
      else if(gold <= (i * 50) && selectedTower == 0 && poor == false)
      {
        println("Out Of Cash!");
        poor = true;
      }
    }
    poor = false;
  }
  else
  {
    if(selectedTower == 1)
    {
      GameObject tower1 = new Tower1();
      gameObjects.add(tower1);
      tower1.Place();
      towerSelect = false;
      gold -= 50;
      selectedTower = 0;
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