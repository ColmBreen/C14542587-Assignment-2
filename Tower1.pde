class Tower1 extends GameObject
{
  Tower1()
  {
    starPos = new PVector(pos1, pos2*5); 
  }
  
  void Render()
  {
    for(int i = 1; i < 6; i++)
    {
      noFill();
      stroke(0, 0, 255);
      rectMode(CORNER);
      rect((starPos.x)*i, (starPos.y), pos1, pos2);
      rectMode(CENTER);
      if(i == 1)
      {
        stroke(255);
        fill(255);
        rect((starPos.x+(pos1/2))*i, starPos.y + (pos2/2), 50, 50);
        fill(255, 0, 0);
        rect((starPos.x+(pos1/2))*i, starPos.y + (pos2/2), 30, 30);
      }
        
    }
  }
  
  void Update()
  {
  }
}