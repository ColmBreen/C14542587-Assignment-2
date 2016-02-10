class Enemy3 extends GameObject
{
  Round round = new Round();
  Enemy1 enemy1 = new Enemy1();
  int goal = 0;
  int direction = 0;
  int first=0, second=0, third=0, fourth=0;
  
  Enemy3()
  {
    health = 100;
    starPos = new PVector(((width/6)*5)/2+pos1, 0);
  }
  
  void Render()
  {
    stroke(255, 255, 0);
    fill(0, 255, 255);
    rectMode(CENTER);
    textSize(15);
    text(health, starPos.x, starPos.y - 15);
    rect(starPos.x, starPos.y, 20, 20);
  }
  
  void Place()
  {
  }
  
  void Update()
  {
    stroke(255, 255, 0);
    if(health < 1)
    {
      gameObjects.remove(this);
      kills ++;
      gold += 35;
    }
    if(direction == 0)
    {
      starPos.y+=.40;
    }
    else if(direction == 1)
    {
      starPos.x+=.40;
    }
    else
    {
      starPos.x-=.40;
    }
    //Enemy got through  
    if(starPos.y > pos2*5)
    {
      goals++;
      gameObjects.remove(this);
    }
    // Top middle lane random direction
    if(starPos.y > (halfLineWidth*2) && starPos.y < (halfLineWidth*3) && starPos.x > middlePath - halfLineWidth && starPos.x < middlePath+halfLineWidth && first == 0)
    {
      direction = (int)random(0, 3);
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
    // Bottom right corner direction change
    if(starPos.x < width-(halfLineWidth*2) && starPos.x >= width-(halfLineWidth*3) && starPos.y > (halfLineWidth*14)+20 && starPos.y < (halfLineWidth*15)+20)
    {
      direction = 2;
    }
    // Bottom left corner direction change
    if(starPos.x > pos1+(halfLineWidth*2) && starPos.x <= pos1+(halfLineWidth*3) && starPos.y > (halfLineWidth*14)+20 && starPos.y < (halfLineWidth*15)+20)
    {
      direction = 1;
    }
    // Middle right random direction 
    if(starPos.x < width-(halfLineWidth*2) && starPos.x >= width-(halfLineWidth*3) && starPos.y >= (halfLineWidth*8)+10 && starPos.y <= (halfLineWidth*9)+10 && second == 0)
    {
      if(third == 1 || fourth == 1)
      {
        direction = 0;
      }
      else
      {
        direction = (int)random(-2, 1);
      }
      second = 1;
    }
    // Middle left direction
    if(starPos.x > pos1+(halfLineWidth*2) && starPos.x <= pos1+(halfLineWidth*3) && starPos.y >= (halfLineWidth*8)+10 && starPos.y <= (halfLineWidth*9)+10 && third == 0)
    {
      if(second == 1 || fourth == 1)
      {
        direction = 0;
      }
      else
      {
        direction = (int)random(0, 2);
      }
      third = 1;
    }
    // Middle middle direction
    if(starPos.x <= middlePath && starPos.x >= middlePath && starPos.y >= (halfLineWidth*8)+10 && starPos.y <= (halfLineWidth*8)+10)
    {
       if(second == 1 && third == 0)
       {
         direction = (int)random(-2, 1);
       }
       else if(third == 1 && second == 0)
       {
         direction = (int)random(0, 2);
       }
       else if(second == 0 && third == 0)
       {
         direction = (int)random(0,3);
       }
       fourth = 1;
    }
    //Bottom middle direction
    if(starPos.x > middlePath-1 && starPos.x <= middlePath+1 && starPos.y > (halfLineWidth*14)+20 && starPos.y < (halfLineWidth*15)+20)
    {
      direction = 0;
    }
  }
}