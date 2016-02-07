class Round
{
  
  boolean rounds[] = new boolean[5];
  //int kills;
  //int goals;
  int enemies;
  int count;
  
  Round()
  {
    count = 0;
    rounds[0] = true;
    for(int i = 1; i < 5; i ++)
    {
      rounds[i] = false;
    }
    //kills = 0;
    //goals = 0;
  }
  
  void roundChange()
  {
    if(rounds[0] == true)
    {
      enemies = 10;
      if((kills + goals) == enemies)
      {
       rounds[0] = false;
       rounds[1] = true;
       kills = 0;
       goals = 0;
       count = 0;
       setup = true;
      }
    }
    else if(rounds[1] == true)
    {
      enemies = 20;
      if((kills + goals) == enemies)
      {
       rounds[1] = false;
       rounds[2] = true;
       kills = 0;
       goals = 0;
       count = 0;
       setup = true;
      }
    }
    else if(rounds[2] == true)
    {
      enemies = 30;
      if((kills + goals) == enemies)
      {
       rounds[2] = false;
       rounds[3] = true;
       kills = 0;
       goals = 0;
       count = 0;
       setup = true;
      }
    }
    else if(rounds[3] == true)
    {
      enemies = 40;
      if((kills + goals) == enemies)
      {
       rounds[3] = false;
       rounds[4] = true;
       kills = 0;
       goals = 0;
       count = 0;
       setup = true;
      }
    }
    else if(rounds[4] == true)
    {
      enemies = 50;
      if((kills + goals) == enemies)
      {
       rounds[4] = false;
       kills = 0;
       goals = 0;
       count = 0;
       menu = true;
      }
    }
  }
  
}