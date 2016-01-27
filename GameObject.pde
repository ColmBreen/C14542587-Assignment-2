abstract class GameObject extends Map
{
  int health;
  PVector starPos;
  boolean[] towerCheck = new boolean[5];
  boolean[] towerPlaced = new boolean[5];
  
  GameObject()
  {
    for(int i = 0; i < 5; i++)
    {
      towerCheck[i] = false;
    }
  }
  
  abstract void Render();
  
  abstract void Update();
}