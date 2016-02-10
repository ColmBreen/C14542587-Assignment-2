class Map
{
  float pos1;
  float pos2;
  float middlePath;
  float hrzMidPath;
  int halfLineWidth = 30;
  float halfFirstBoxW; 
  float halfFirstBoxV;
  float halfRightBoxW;
  float halfBottomBoxV;
  float MidBoxV;
  float MidBoxW;
  
  Map()
  {
    halfFirstBoxW = (((middlePath-halfLineWidth) - (pos1+(halfLineWidth*4)))/2)+(pos1+(halfLineWidth*4));
    halfFirstBoxV = (((hrzMidPath - halfLineWidth) - (halfLineWidth*3))/2) + (halfLineWidth*3);
    halfRightBoxW = (((width - (halfLineWidth*4)) - (middlePath + halfLineWidth))/2) + (middlePath + halfLineWidth);
    halfBottomBoxV = ((((pos2*5) - (halfLineWidth*3)) - (hrzMidPath + halfLineWidth))/2) + (hrzMidPath + halfLineWidth);
    pos1 = width/6;
    pos2 = height/6;
    middlePath = ((width/6)*5)/2+pos1;
    hrzMidPath = ((pos2*5)/2);
    MidBoxW = (((middlePath-halfLineWidth) - (pos1+(halfLineWidth*4)))/2);
    MidBoxV = ((hrzMidPath - halfLineWidth) - (((hrzMidPath - halfLineWidth) - (halfLineWidth*3))/2));
  }
  
  void Highlight()
  {
    //rectMode(CENTER);
    //for(int i = 0; i < towerCheck.size(); i++)
    //{
    //}
  }
  
  void RenderMap()
  {
    background(0);
    stroke(0, 0, 255);
    line(pos1, 0, pos1, height);
    line(0, pos2*5, width, pos2*5);
    stroke(255, 255, 0);
    textSize(20);
    fill(0, 0, 255);
    text("Round:", pos1/2, pos2*1.25);
    for(int i = 0; i < 5; i++)
    {
      if(round.rounds[i] == true)
      {
        text(i+1, pos1/2, pos2*1.5);
      }
    }
    text("Enemies Left:", pos1/2, pos2*2);
    text(round.enemies - kills - goals, pos1/2, pos2*2.25);
    line(middlePath-halfLineWidth, 0, middlePath-halfLineWidth, halfLineWidth);
    line(middlePath+halfLineWidth, 0, middlePath+halfLineWidth, halfLineWidth);
    line(middlePath+halfLineWidth, (pos2*5)-(halfLineWidth), middlePath+halfLineWidth, pos2*5);
    line(middlePath-halfLineWidth, (pos2*5)-(halfLineWidth), middlePath-halfLineWidth, pos2*5);
    line(pos1+(halfLineWidth*2), halfLineWidth, pos1+(halfLineWidth*2), (pos2*5)-halfLineWidth);
    line(width-(halfLineWidth*2), halfLineWidth, width-(halfLineWidth*2), (pos2*5)-halfLineWidth);
    line(pos1+(halfLineWidth*2), halfLineWidth, middlePath-halfLineWidth, halfLineWidth);
    line(middlePath+halfLineWidth, halfLineWidth, width-(halfLineWidth*2), halfLineWidth);
    line(pos1+(halfLineWidth*2), (pos2*5)-halfLineWidth, middlePath-halfLineWidth, (pos2*5)-halfLineWidth);
    line(middlePath+halfLineWidth, (pos2*5)-halfLineWidth, width-halfLineWidth*2, (pos2*5)-halfLineWidth);
    rectMode(CORNERS);
    noFill();
    rect(pos1+halfLineWidth*4, halfLineWidth*3, middlePath-halfLineWidth, hrzMidPath-halfLineWidth);
    rect(pos1+halfLineWidth*4, hrzMidPath+halfLineWidth, middlePath-halfLineWidth, (pos2*5)-halfLineWidth*3);
    rect(width-halfLineWidth*4, halfLineWidth*3, middlePath+halfLineWidth, hrzMidPath-halfLineWidth);
    rect(width-halfLineWidth*4, hrzMidPath+halfLineWidth, middlePath+halfLineWidth, (pos2*5)-halfLineWidth*3);
    stroke(255, 255, 0);
    line((pos1 + halfLineWidth*4), MidBoxV, (middlePath - halfLineWidth), MidBoxV);
    line((pos1 + (halfLineWidth*4)) + MidBoxW, halfLineWidth*3, (pos1 + (halfLineWidth*4)) + MidBoxW, hrzMidPath - halfLineWidth);
    line(middlePath + halfLineWidth, MidBoxV, (width - (halfLineWidth*4)), MidBoxV);
    line((middlePath + halfLineWidth) + MidBoxW, halfLineWidth*3, (middlePath + halfLineWidth) + MidBoxW, hrzMidPath - halfLineWidth);
    line((pos1 + halfLineWidth*4), (hrzMidPath + halfLineWidth) + (((hrzMidPath - halfLineWidth) - (halfLineWidth*3))/2),
    (middlePath - halfLineWidth), (hrzMidPath + halfLineWidth) + (((hrzMidPath - halfLineWidth) - (halfLineWidth*3))/2));
    line(middlePath + halfLineWidth, (hrzMidPath + halfLineWidth) + (((hrzMidPath - halfLineWidth) - (halfLineWidth*3))/2), 
    (width - (halfLineWidth*4)), (hrzMidPath + halfLineWidth) + (((hrzMidPath - halfLineWidth) - (halfLineWidth*3))/2));
    line((pos1 + (halfLineWidth*4)) + MidBoxW, hrzMidPath + halfLineWidth, (pos1 + (halfLineWidth*4)) + MidBoxW, ((pos2*5) - (halfLineWidth*3)));
    line((middlePath + halfLineWidth) + MidBoxW, hrzMidPath + halfLineWidth, (middlePath + halfLineWidth) + MidBoxW, ((pos2*5) - (halfLineWidth*3)));
    stroke(0, 0, 255);
    fill(255);
    rect(0, 0, pos1, pos2);
    fill(255, 0, 0);
    textAlign(CENTER);
    textSize(30);
    text("Ready", pos1 - (pos1/2), (pos2 - (pos2/2)) + 10);
  }
}