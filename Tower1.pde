class Tower1 extends GameObject
{  
  Tower1()
  {
    starPos = new PVector(pos1, pos2*5);
  }
  
  void Render()
  {
    starPos = new PVector(pos1, pos2*5);
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
      rectMode(CORNERS);
      fill(255, 255, 255, 150);
      stroke(0);
      rect(pos1+(halfLineWidth*4), halfLineWidth*3, ((((middlePath-halfLineWidth)-(pos1+(halfLineWidth*4)))/2)+(pos1+(halfLineWidth*4))), (((hrzMidPath - halfLineWidth) - (halfLineWidth*3))/2)+halfLineWidth*3); 
      rect(pos1+(halfLineWidth*4), (((hrzMidPath - halfLineWidth) - (halfLineWidth*3))/2)+halfLineWidth*3, ((((middlePath-halfLineWidth)-(pos1+(halfLineWidth*4)))/2)+(pos1+(halfLineWidth*4))), hrzMidPath-halfLineWidth); 
      rect(middlePath-halfLineWidth, halfLineWidth*3, ((((middlePath-halfLineWidth)-(pos1+(halfLineWidth*4)))/2)+(pos1+(halfLineWidth*4))), (((hrzMidPath - halfLineWidth) - (halfLineWidth*3))/2)+halfLineWidth*3);
      rect(middlePath-halfLineWidth, (((hrzMidPath - halfLineWidth) - (halfLineWidth*3))/2)+halfLineWidth*3, ((((middlePath-halfLineWidth)-(pos1+(halfLineWidth*4)))/2)+(pos1+(halfLineWidth*4))), hrzMidPath-halfLineWidth);
    }
  }
}