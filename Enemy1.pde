class Enemy1 extends Enemy
{
  int goal = 0;
  int direction = 0;
  int first=0, second=0, third=0, fourth=0;
  
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
    if(direction == 0)
    {
      starPos.y++;
    }
    else if(direction == 1)
    {
      starPos.x++;
    }
    else
    {
      starPos.x--;
    }
    //Enemy got through  
    if(starPos.y > pos2*5)
    {
      goal++;
    }
    // Top middle lane random direction
    if(starPos.y > (halfLineWidth*2) && starPos.y < (halfLineWidth*3) && starPos.x > middlePath - halfLineWidth && starPos.x < middlePath+halfLineWidth && first == 0)
    {
      direction = (int)random(0, 3);
      //direction = 1;
      first = 1;
    }
    // top left corner direction change
    if(starPos.x > pos1+(halfLineWidth*2) && starPos.x <= pos1+(halfLineWidth*3) && starPos.y > halfLineWidth && starPos.y < (halfLineWidth*3))
    {
      direction = 0;
    }
    // Top right corner direction change
    if(starPos.x < width-(halfLineWidth*2) && starPos.x >= width-(halfLineWidth*3) && starPos.y > halfLineWidth && starPos.y < (halfLineWidth*3))
    {
      direction = 0;
    }
    
    if(starPos.x < width-(halfLineWidth*2) && starPos.x >= width-(halfLineWidth*3) && starPos.y > (halfLineWidth*8) && starPos.y <= (halfLineWidth*9) && second == 0)
    {
      direction = (int)random(-2, 1);
      second = 1;
    }
    
    //if(starPos.x < width-(halfLineWidth*2) && starPos.x >= width-(halfLineWidth*3) && starPos.y > halfLineWidth && starPos.y < (halfLineWidth*3))
    //{
    //  direction = 0;
    //}
    
    //if(starPos.x < width-(halfLineWidth*2) && starPos.x >= width-(halfLineWidth*3) && starPos.y > halfLineWidth && starPos.y < (halfLineWidth*3))
    //{
    //  direction = 0;
    //}
  }
  
}