abstract class GameObject extends Map
{
  int health;
  PVector starPos;
  GameObject()
  {
    
  }
  
  abstract void Render();
  
  abstract void Update();
}