class Enemy1 extends Enemy
{
  int goal = 0;
  
  Enemy1()
  {
    health = 10;
    starPos = new PVector(((width/6)*5)/2+pos1, 0);
  }
  
  void EnemyRender()
  {
    rectMode(CENTER);
    noFill();
    rect(starPos.x, starPos.y, 10, 10);
  }
  
  void EnemyUpdate()
  {
    starPos.y++;
    if(starPos.y > pos2*5)
    {
      goal = 1;
    }
  }
  
}