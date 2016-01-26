class Map
{
  float pos1;
  float pos2;
  float middlePath;
  float hrzMidPath;
  int halfLineWidth = 30;
  float halfBoxWidth;
  float halfBoxHeight;
  
  Map()
  {
    pos1 = width/6;
    pos2 = height/6;
    middlePath = ((width/6)*5)/2+pos1;
    hrzMidPath = ((pos2*5)/2);
  }
  
  void RenderMap()
  {
    background(0);
    stroke(0, 0, 255);
    line(pos1, 0, pos1, height);
    line(0, pos2*5, width, pos2*5);
    stroke(255, 255, 0);
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
    rect(pos1+halfLineWidth*4, halfLineWidth*3, middlePath-halfLineWidth, hrzMidPath-halfLineWidth);
    rect(pos1+halfLineWidth*4, hrzMidPath+halfLineWidth, middlePath-halfLineWidth, (pos2*5)-halfLineWidth*3);
    rect(width-halfLineWidth*4, halfLineWidth*3, middlePath+halfLineWidth, hrzMidPath-halfLineWidth);
    rect(width-halfLineWidth*4, hrzMidPath+halfLineWidth, middlePath+halfLineWidth, (pos2*5)-halfLineWidth*3);
    halfBoxWidth = pos1+halfLineWidth*4 - middlePath-halfLineWidth;
    halfBoxHeight = halfLineWidth*3 - hrzMidPath-halfLineWidth;
    
  }
}