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
    rect((starPos.x+(pos1/2)), starPos.y + (pos2/2), 60, 50);
    fill(255, 0, 0);
    rect((starPos.x+(pos1/2)), starPos.y + (pos2/2), 40, 30);     
  }
  
  
  void Update()
  {
    float halfFirstBoxW = (((middlePath-halfLineWidth) - (pos1+(halfLineWidth*4)))/2)+(pos1+(halfLineWidth*4)); 
    float halfFirstBoxV = (((hrzMidPath - halfLineWidth) - halfLineWidth*3)/2) + halfLineWidth*3;
    if(towerCheck[0] == true)
    {
      rectMode(CENTER);
      stroke(255);
      fill(255);
      rect(((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4), ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3, 60, 50);
      fill(255, 0, 0);
      rect(((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4), ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3, 40, 30); 
    }
  }
}