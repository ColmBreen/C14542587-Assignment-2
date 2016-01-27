class Tower1 extends GameObject
{  
  Tower1()
  {
    starPos = new PVector(pos1, pos2*5);
  }
  
  void Render()
  {
    noFill();
    stroke(0, 0, 255);
    rectMode(CORNER);
    rect((starPos.x), (starPos.y), pos1, pos2);
    rectMode(CENTER);
    stroke(255);
    fill(255);
    rect((starPos.x+(pos1/2)), starPos.y + (pos2/2), 50, 50);
    fill(255, 0, 0);
    rect((starPos.x+(pos1/2)), starPos.y + (pos2/2), 30, 30);     
  }
  
  
  void Update()
  {
    if(towerCheck[0] == true)
    {
      rectMode(CENTER);
      stroke(255);
      fill(255);
      //starPos.x = pmouseX;
      //starPos.y = pmouseY;
      rect((starPos.x+(pos1/2)), starPos.y + (pos2/2), 50, 50);
      fill(255, 0, 0);
      rect((starPos.x+(pos1/2)), starPos.y + (pos2/2), 30, 30); 
    }
  }
}