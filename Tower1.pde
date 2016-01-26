class Tower1 extends GameObject
{
  Tower1()
  {
    starPos = new PVector(pos1, pos2*5); 
  }
  
  void Render()
  {
    rectMode(CORNER);
    for(int i = 1; i < 6; i++)
    {
      stroke(0, 0, 255);
      rect((starPos.x)*i, (starPos.y), pos1, pos2);
      text(i, ((starPos.x)*i)+(pos1/2), (pos2*5)+(pos2/2));
        
    }
  }
  
  void Update()
  {
  }
}