void setup()
{
  size(800,600);  
  background(0);
  mapping = new Map();
  enemy1 = new Enemy1();
  tower1 = new Tower1();
  tower2 = new Tower2();
  tower3 = new Tower3();
  tower4 = new Tower4();
  tower5 = new Tower5();
  round = new Round();
  towerSelect = false;
  selectedTower = 0;
  menu = true;
  setup = false;
  gold = 100; 
  kills = 0;
  goals = 0;
}

int gold, kills, goals;
boolean towerSelect, menu, setup;
int selectedTower;
Tower1 tower1;
Tower2 tower2;
Tower3 tower3;
Tower4 tower4;
Tower5 tower5;
Enemy1 enemy1;
Round round;
Map mapping;
ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();

void draw()
{
  println(kills);
  if(menu == true)
  {
    textSize(50);
    textAlign(CENTER);
    fill(255, 0, 0);
    text("ORCS GOTTA DIE SOMETIME", 400, 100);
    textSize(40);
    text("WHY NOT NOW?", 400, 150);
    rectMode(CENTER);
    fill(255);
    rect(400, 300, 400, 100);
    rect(400, 450, 400, 100);
    fill(255, 0, 0);
    text("Play", 400, 310);
    text("Options", 400, 460);
  }
  else
  {
    mapping.RenderMap();
    tower1.Render();
    tower2.Render();
    tower3.Render();
    tower4.Render();
    tower5.Render();
    textAlign(CENTER);
    textSize(30);
    fill(0, 0, 255);
    text("$" + gold, (mapping.pos1/2), (mapping.pos2*5) + (mapping.pos2/2));
    for(int i = gameObjects.size() - 1 ; i >= 0   ;i --)
    {
       GameObject go = gameObjects.get(i);
       if(go instanceof Tower1 || go instanceof Tower2 || go instanceof Tower3 || go instanceof Tower4 || go instanceof Tower5)
       {
         go.Update();
       }
       else
       {
         go.Render();
         go.Update();
       }
    }
    //Tower attacking enemies
    for(int i = gameObjects.size() - 1; i >= 0; i--)
      {
      GameObject go = gameObjects.get(i);
       if(go instanceof Tower1 || go instanceof Tower2 || go instanceof Tower3 || go instanceof Tower4 || go instanceof Tower5)
       {
          for(int j = gameObjects.size() - 1; j >= 0; j--)
          {
            GameObject other = gameObjects.get(j);
            if(other instanceof Enemy1)
            {
              if(go.centre.dist(other.starPos) < 100)
              {
                if(frameCount % 30 == 0)
                {
                  if(go instanceof Tower1)
                  {
                    other.health -= 2;
                  }
                  else if(go instanceof Tower2)
                  {
                    other.health -= 4;
                  }
                  else if(go instanceof Tower3)
                  {
                    other.health -= 6;
                  }
                  else if(go instanceof Tower4)
                  {
                    other.health -= 8;
                  }
                  else if(go instanceof Tower5)
                  {
                    other.health -= 10;
                  }
                }
              }
            }
          }
        }
      }
      if(setup == false)
      {
        round.roundChange();
        if(frameCount % 90 == 0)
        {
          if(round.count < round.enemies)
          {
            GameObject enemy1 = new Enemy1();
            gameObjects.add(enemy1);
            round.count++;
          }
          else
          {
            round.roundChange();
          }
        }
      }
    }
}

void mouseClicked()
{
  if(menu == false)
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
      if(mouseX > 0 && mouseX < mapping.pos1 && mouseY > 0 && mouseY < mapping.pos2)
      {
        setup = false;
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
        if(round.rounds[0] == false)
        {
          GameObject tower2 = new Tower2();
          gameObjects.add(tower2);
          tower2.Place();
          towerSelect = false;
          gold -= 100;
          selectedTower = 0;
        }
        else
        {
          towerSelect = false;
        }
      }
      if(selectedTower == 3)
      {
        if(round.rounds[0] == false && round.rounds[1] == false)
        {
          GameObject tower3 = new Tower3();
          gameObjects.add(tower3);
          tower3.Place();
          towerSelect = false;
          gold -= 150;
          selectedTower = 0;
        }
        else
        {
          towerSelect = false;
        }
      }
      if(selectedTower == 4)
      {
        if(round.rounds[0] == false && round.rounds[1] == false && round.rounds[3] == false)
        {
          GameObject tower4 = new Tower4();
          gameObjects.add(tower4);
          tower4.Place();
          towerSelect = false;
          gold -= 200;
          selectedTower = 0;
        }
        else
        {
          towerSelect = false;
        }
      }
      if(selectedTower == 5)
      {
        if(round.rounds[0] == false && round.rounds[1] == false && round.rounds[3] == false && round.rounds[4] == false)
        {
          GameObject tower5 = new Tower5();
          gameObjects.add(tower5);
          tower5.Place();
          towerSelect = false;
          gold -= 200;
          selectedTower = 0;
        }
        else
        {
          towerSelect = false;
        }
      }
    }
  }
  else if(mouseX > 200 && mouseX < 600 && mouseY > 250 && mouseY < 350)
  {
    menu = false;
    setup = true;
  }
}