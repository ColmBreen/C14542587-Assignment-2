class Tower4 extends GameObject
{  
  boolean collision;
  boolean cash;
  int i;
  Tower4()
  {
    starPos = new PVector(pos1, pos2*5);
    collision = false;
    centre.x = (starPos.x+((pos1/2))*7);
    centre.y = starPos.y + (pos2/2);
    cash = false;
  }
  
  void Render()
  {
    if(round.rounds[0] == false && round.rounds[1] == false && round.rounds[2] == false)
    {
      starPos = new PVector(pos1, pos2*5);
      noFill();
      stroke(0, 0, 255);
      rectMode(CORNER);
      rect((starPos.x)*4, (starPos.y), pos1, pos2);
      rectMode(CENTER);
      stroke(255);
      fill(127);
      rect(centre.x, centre.y, 60, 50);
      fill(0, 255, 255);
      ellipse(centre.x, centre.y, 40, 40);
      if(cash == false)
      {
        textSize(15);
        text("$200", centre.x - 10, centre.y + 40);
      }
      else if(cashTaken == false)
      {
        gold -= 200;
        cashTaken = true;
      }
      cash = false;
    }
    else
    {
      stroke(255);
      rectMode(CENTER);
      fill(137);
      ellipse(centre.x, centre.y - 22, 42, 42);
      fill(0);
      ellipse(centre.x, centre.y - 18, 30, 42);
      fill(127);
      rect(centre.x, centre.y, 60, 50);
      textAlign(CENTER);
      fill(0);
      text("locked", centre.x, centre.y);
    } 
  }
  
  
  
  void Place()
  {
    this.i = towers.TowerPlace();
  }
  
  void Update()
  {
    PVector temp = new PVector(0, 0);
    temp = towers.TowerUpdate(i);
    centre.x = temp.x;
    centre.y = temp.y;
    cash = true;
    Render();
  }
}