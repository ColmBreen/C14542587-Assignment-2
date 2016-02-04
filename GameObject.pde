abstract class GameObject extends Map
{
  int health;
  PVector starPos;
  PVector forward = new PVector(0, -1);
  PVector centre = new PVector(0, 0);
  float theta = 0.0f;
  boolean[] towerCheck = new boolean[16];
  boolean[] towerPlaced = new boolean[5];
  float halfFirstBoxW = (((mapping.middlePath-mapping.halfLineWidth) - (mapping.pos1+(mapping.halfLineWidth*4)))/2)+(mapping.pos1+(mapping.halfLineWidth*4)); 
  float halfFirstBoxV = (((mapping.hrzMidPath - mapping.halfLineWidth) - (mapping.halfLineWidth*3))/2) + (mapping.halfLineWidth*3);
  float halfRightBoxW = (((width - (halfLineWidth*4)) - (middlePath + halfLineWidth))/2) + (middlePath + halfLineWidth);
  float halfBottomBoxV = ((((pos2*5) - (halfLineWidth*3)) - (hrzMidPath + halfLineWidth))/2) + (hrzMidPath + halfLineWidth);
  
  GameObject()
  {
    for(int i = 0; i < 16; i++)
    {
      towerCheck[i] = false;
    }
  }
  
  abstract void Render();
  abstract void Place();
  abstract void Update();
}