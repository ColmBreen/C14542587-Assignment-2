abstract class GameObject extends Map
{
  int health;
  PVector starPos;
  boolean[] towerCheck = new boolean[5];
  boolean[] towerPlaced = new boolean[16];
  
  GameObject()
  {
    for(int i = 0; i < 5; i++)
    {
      towerCheck[i] = false;
    }
    for(int i = 0; i < 16; i++)
    {
      towerPlaced[i] = false;
    }
  }
  
  abstract void Render();
  
  abstract void Update();
}