abstract class GameObject extends Map
{
  int health;
  PVector starPos;
  boolean[] towerCheck = new boolean[5];
  boolean[] towerPlaced = new boolean[5];
  float halfFirstBoxW = (((mapping.middlePath-mapping.halfLineWidth) - (mapping.pos1+(mapping.halfLineWidth*4)))/2)+(mapping.pos1+(mapping.halfLineWidth*4)); 
  float halfFirstBoxV = (((mapping.hrzMidPath - mapping.halfLineWidth) - (mapping.halfLineWidth*3))/2) + (mapping.halfLineWidth*3);
  
  GameObject()
  {
    for(int i = 0; i < 5; i++)
    {
      towerCheck[i] = false;
    }
  }
  
  abstract void Render();
  abstract void Place();
  abstract void Update();
}