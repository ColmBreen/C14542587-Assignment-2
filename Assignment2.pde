void setup()
{
  size(800,600);  
  background(0);
  mapping = new Map();
  tower1 = new Tower1();
  tower2 = new Tower2();
  tower3 = new Tower3();
  tower4 = new Tower4();
  tower5 = new Tower5();
  round = new Round();
  towers = new Towers();
  towerSelect = false;
  selectedTower = 0;
  menu = true;
  setup = false;
  setupPop = false;
  gameOver = false;
  winner = false;
  gold = 100; 
  kills = 0;
  goals = 0;
  rightClick = 0;
}

int gold, kills, goals, rightClick;
boolean towerSelect, menu, setup, setupPop, gameOver, winner;
int selectedTower;
Towers towers;
Tower1 tower1;
Tower2 tower2;
Tower3 tower3;
Tower4 tower4;
Tower5 tower5;
//Enemy1 enemy1;
Round round;
Map mapping;
ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();

void draw()
{
  if(gameOver == true)
  {
    background(0);
    textSize(50);
    textAlign(CENTER);
    fill(255, 0, 0);
    text("Game Over", 400, 100);
    textSize(40);
    text("Would you like to try again?", 400, 150);
    rectMode(CENTER);
    fill(255);
    rect(200, 300, 200, 100);
    fill(255, 0, 0);
    text("Retry", 200, 310);
    fill(255);
    rect(600, 300, 200, 100);
    fill(255, 0, 0);
    text("Menu", 600, 310);
  }
   else if(menu == true)
  {
    background(0);
    textSize(50);
    textAlign(CENTER);
    fill(255, 0, 0);
    text("ORCS GOTTA DIE SOMETIME", 400, 100);
    textSize(40);
    text("WHY NOT NOW?", 400, 150);
    rectMode(CENTER);
    fill(255);
    rect(400, 300, 400, 100);
    fill(255, 0, 0);
    text("Play", 400, 310);
    fill(255);
    rect(400, 450, 400, 100);
    fill(255, 0, 0);
    text("Quit Game", 400, 460);
  }
  else
  {
    mapping.RenderMap();
    tower1.Render();
    tower2.Render();
    tower3.Render();
    tower4.Render();
    tower5.Render();
    if(setupPop == true)
    {
      textAlign(CENTER);
      textSize(30);
      fill(255, 0, 0);
      text("Setup Phase", mapping.middlePath, mapping.hrzMidPath + 10);
    }
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
          if(other instanceof Enemy1 || other instanceof Enemy2 || other instanceof Enemy3 || other instanceof Enemy4)
          {
            if((go instanceof Tower1 && go.centre.dist(other.starPos) < 100) || (go instanceof Tower2 && go.centre.dist(other.starPos) < 110) ||
            (go instanceof Tower3 && go.centre.dist(other.starPos) < 120) || (go instanceof Tower4 && go.centre.dist(other.starPos) < 130) ||
            (go instanceof Tower5 && go.centre.dist(other.starPos) < 140))
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
                  other.health -= 8;
                }
                else if(go instanceof Tower4)
                {
                  other.health -= 16;
                }
                else if(go instanceof Tower5)
                {
                  other.health -= 32;
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
          if(round.rounds[0] == true)
          {
            GameObject enemy1 = new Enemy1();
            gameObjects.add(enemy1);
            round.count++;
          }
          else if(round.rounds[1] == true)
          {
            if(round.count < 10)
            {
              GameObject enemy1 = new Enemy1();
              gameObjects.add(enemy1);
              round.count++;
            }
            else
            {
              GameObject enemy2 = new Enemy2();
              gameObjects.add(enemy2);
              round.count++;
            }
          }
          else if(round.rounds[2] == true)
          {
            if(round.count < 15)
            {
              GameObject enemy2 = new Enemy2();
              gameObjects.add(enemy2);
              round.count++;
            }
            else
            {
              GameObject enemy3 = new Enemy3();
              gameObjects.add(enemy3);
              round.count++;
            }
          }
          else if(round.rounds[3] == true)
          {
            if(round.count < 20)
            {
              GameObject enemy3 = new Enemy3();
              gameObjects.add(enemy3);
              round.count++;
            }
            else
            {
              GameObject enemy4 = new Enemy4();
              gameObjects.add(enemy4);
              round.count++;
            }
          }
          else if(round.rounds[4] == true)
          {
            if(round.count < 10)
            {
              GameObject enemy1 = new Enemy1();
              gameObjects.add(enemy1);
              round.count++;
            }
            else if(round.count < 20)
            {
              GameObject enemy2 = new Enemy2();
              gameObjects.add(enemy2);
              round.count++;
            }
            else if(round.count < 30)
            {
              GameObject enemy3 = new Enemy3();
              gameObjects.add(enemy3);
              round.count++;
            }
            else
            {
              GameObject enemy4 = new Enemy4();
              gameObjects.add(enemy4);
              round.count++;
            }
          }
        }
        else
        {
          round.roundChange();
        }
      }
    }
    round.roundChange();
    if(goals >= (round.enemies/2))
    {
       menu = true;
       gameOver = true;
       kills = 0;
       goals = 0;
       round.count = 0;
       //background(0);
       for(int i = 0; i < gameObjects.size(); i++)
       {
         gameObjects.remove(gameObjects.get(i));
       }
       for(int i = 0; i < gameObjects.size(); i++)
       {
         gameObjects.remove(gameObjects.get(i));
       }
       for(int i = 0; i < gameObjects.size(); i++)
       {
         gameObjects.remove(gameObjects.get(i));
       }
       round.rounds[0] = true;
       for(int i = 1; i < 5; i ++)
       {
         round.rounds[i] = false;
       } 
    }
  }
}

void mouseClicked()
{
  if(menu == false)
  {
    if(setup == true)
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
          setupPop = false;
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
            selectedTower = 0;
          }
          else
          {
            towerSelect = false;
          }
        }
        if(selectedTower == 4)
        {
          if(round.rounds[0] == false && round.rounds[1] == false && round.rounds[2] == false)
          {
            GameObject tower4 = new Tower4();
            gameObjects.add(tower4);
            tower4.Place();
            towerSelect = false;
            selectedTower = 0;
          }
          else
          {
            towerSelect = false;
          }
        }
        if(selectedTower == 5)
        {
          if(round.rounds[0] == false && round.rounds[1] == false && round.rounds[2] == false && round.rounds[3] == false)
          {
            GameObject tower5 = new Tower5();
            gameObjects.add(tower5);
            tower5.Place();
            towerSelect = false;
            selectedTower = 0;
          }
          else
          {
            towerSelect = false;
          }
        }
      }
    }
  }
  else if(gameOver == true && mouseX > 100 && mouseX < 300 && mouseY > 250 && mouseY < 350)
  {
    menu = false;
    gameOver = false;
    setup = true;
    setupPop = true;
  }
  else if(gameOver == true && mouseX > 500 && mouseX < 700 && mouseY > 250 && mouseY < 350)
  {
    gameOver = false;
    setup = true;
    setupPop = true;
  }
  else if(menu == true && mouseX > 200 && mouseX < 600 && mouseY > 250 && mouseY < 350)
  {
    menu = false;
    setup = true;
    setupPop = true;
    println("Setup Phase");
  }
  else if(menu == true && mouseX > 200 && mouseX < 600 && mouseY > 400 && mouseY < 500)
  {
    exit();
  }
}