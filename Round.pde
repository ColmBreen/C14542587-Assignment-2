class Round
{
  
  boolean rounds[] = new boolean[5];
  int kills;
  int goals;
  int enemies;
  
  Round()
  {
    rounds[0] = true;
    for(int i = 1; i < 5; i ++)
    {
      rounds[i] = false;
    }
    kills = 0;
    goals = 0;
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
      }
    }
    else if(rounds[1] == true)
    {
      enemies = 20;
      if((kills + goals) == enemies)
      {
        rounds[1] = false;
        rounds[2] = true;
      }
    }
    else if(rounds[2] == true)
    {
      enemies = 30;
      if((kills + goals) == enemies)
      {
        rounds[2] = false;
        rounds[3] = true;
      }
    }
    else if(rounds[3] == true)
    {
      enemies = 40;
      if((kills + goals) == enemies)
      {
        rounds[4] = false;
        rounds[5] = true;
      }
    }
    else if(rounds[4] == true)
    {
      enemies = 50;
      if((kills + goals) == enemies)
      {
        rounds[5] = false;
      }
    }
  }
  
}