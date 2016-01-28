class Tower1 extends GameObject
{  
  float hafFirSqr;
  float hafFirVer;
  
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
    int i;
    hafFirSqr = ((((middlePath-halfLineWidth)-(pos1+(halfLineWidth*4)))/2)+(pos1+(halfLineWidth*4)));
    hafFirVer = (((hrzMidPath - halfLineWidth)-halfLineWidth*3)/2)+halfLineWidth*3;
    if(towerCheck[0] == true && towerPlaced[0] == false)
    {
      println("Hi");
      println("you");
      rectMode(CORNERS);
      fill(255, 255, 255, 150);
      stroke(0);
      rect(pos1+(halfLineWidth*4), halfLineWidth*3, hafFirSqr, hafFirVer); 
      rect(pos1+(halfLineWidth*4), hafFirVer, hafFirSqr, hrzMidPath-halfLineWidth); 
      rect(middlePath-halfLineWidth, halfLineWidth*3, hafFirSqr, hafFirVer);
      rect(middlePath-halfLineWidth, hafFirVer, hafFirSqr, hrzMidPath-halfLineWidth);
    }
    else
    {
      for(i = 0; i < 16; i++)
      {
        if(towerCheck[0] == false && towerPlaced[i] == true)
        {
          println("Hi");
          rectMode(CENTER);
          stroke(255);
          fill(255);
          rect((hafFirSqr - pos1+(halfLineWidth*4))/2 + pos1, (hafFirVer - (halfLineWidth*3))/2 + halfLineWidth*3, 50, 50);
          fill(255, 0, 0);
          rect((hafFirSqr - pos1+(halfLineWidth*4))/2 + pos1, (hafFirVer - (halfLineWidth*3))/2 + halfLineWidth*3, 30, 30); 
        }
      }
    }
  }
}