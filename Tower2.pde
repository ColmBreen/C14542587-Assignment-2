class Tower2 extends GameObject
{  
  boolean collision;
  boolean cash;
  int i;
  Tower2()
  {
    starPos = new PVector(pos1, pos2*5);
    collision = false;
    centre.x = (starPos.x+((pos1/2))*3);
    centre.y = starPos.y + (pos2/2);
    cash = false;
  }
  
  void Render()
  {
    if(round.rounds[0] != true)
    {
      starPos = new PVector(pos1, pos2*5);
      noFill();
      stroke(0, 0, 255);
      rectMode(CORNER);
      rect((starPos.x)*2, (starPos.y), pos1, pos2);
      rectMode(CENTER);
      stroke(255);
      fill(127);
      rect(centre.x, centre.y, 60, 50);
      fill(255, 255, 0);
      ellipse(centre.x, centre.y, 40, 40);
      if(cash == false)
      {
        textSize(15);
        text("$100", centre.x - 10, centre.y + 40);
      }
      else if(cashTaken == false)
      {
        gold -= 100;
        cashTaken = true;
      }
      cash = false;
    }
    else
    {
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
    if(i != 50)
    {
      PVector temp = new PVector(0, 0);
      temp = towers.TowerUpdate(i);
      centre.x = temp.x;
      centre.y = temp.y;
      cash = true;
      Render();
    }
  }
}