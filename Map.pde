class Map
{
  float pos1;
  float pos2;
  float middlePath;
  float hrzMidPath;
  int halfLineWidth = 30;
  
  Map()
  {
    pos1 = width/6;
    pos2 = height/6;
    middlePath = ((width/6)*5)/2+pos1;
    hrzMidPath = ((pos2*5)/2);
  }
  
  void RenderMap()
  {
    stroke(0, 0, 255);
    line(pos1, 0, pos1, height);
    line(0, pos2*5, width, pos2*5);
    stroke(255, 255, 0);
    //Middle Top
    line(middlePath-halfLineWidth, 0, middlePath-halfLineWidth, halfLineWidth);
    line(middlePath+halfLineWidth, 0, middlePath+halfLineWidth, halfLineWidth);
    line(middlePath-halfLineWidth, halfLineWidth*3, middlePath-halfLineWidth, hrzMidPath-halfLineWidth);
    line(middlePath+halfLineWidth, halfLineWidth*3, middlePath+halfLineWidth, hrzMidPath-halfLineWidth);
    //Middle Bottom
    line(middlePath+halfLineWidth, hrzMidPath+halfLineWidth, middlePath+halfLineWidth, (pos2*5)-(halfLineWidth*3));
    line(middlePath-halfLineWidth, hrzMidPath+halfLineWidth, middlePath-halfLineWidth, (pos2*5)-(halfLineWidth*3));
    line(middlePath+halfLineWidth, (pos2*5)-(halfLineWidth), middlePath+halfLineWidth, pos2*5);
    line(middlePath-halfLineWidth, (pos2*5)-(halfLineWidth), middlePath-halfLineWidth, pos2*5);
    //Horizontal Middle Left
    line(pos1+(halfLineWidth*4), hrzMidPath-halfLineWidth, middlePath-halfLineWidth, hrzMidPath-halfLineWidth);
    line(pos1+(halfLineWidth*4), hrzMidPath+halfLineWidth, middlePath-halfLineWidth, hrzMidPath+halfLineWidth);
    //Horizontal Middle Right
    line(middlePath+halfLineWidth, hrzMidPath+halfLineWidth, width-(halfLineWidth*4), hrzMidPath+halfLineWidth);
    line(middlePath+halfLineWidth, hrzMidPath-halfLineWidth, width-(halfLineWidth*4), hrzMidPath-halfLineWidth);
    //Vertical Left
    line(pos1+(halfLineWidth*2), halfLineWidth, pos1+(halfLineWidth*2), (pos2*5)-halfLineWidth);
    line(pos1+(halfLineWidth*4), halfLineWidth*3, pos1+(halfLineWidth*4), hrzMidPath-halfLineWidth);
    line(pos1+(halfLineWidth*4), hrzMidPath+halfLineWidth, pos1+(halfLineWidth*4), (pos2*5)-(halfLineWidth*3));
    //Vertical Right
    line(width-(halfLineWidth*2), halfLineWidth, width-(halfLineWidth*2), (pos2*5)-halfLineWidth);
    line(width-(halfLineWidth*4), halfLineWidth*3, width-(halfLineWidth*4), hrzMidPath-halfLineWidth);
    line(width-(halfLineWidth*4), hrzMidPath+halfLineWidth, width-(halfLineWidth*4), (pos2*5)-(halfLineWidth*3));
    //Horizontal Top
    line(pos1+(halfLineWidth*2), halfLineWidth, middlePath-halfLineWidth, halfLineWidth);
    line(pos1+(halfLineWidth*4), halfLineWidth*3, middlePath-halfLineWidth, halfLineWidth*3);
    line(middlePath+halfLineWidth, halfLineWidth, width-(halfLineWidth*2), halfLineWidth);
    line(middlePath+halfLineWidth, halfLineWidth*3, width-(halfLineWidth*4), halfLineWidth*3);
    //Horizontal Bottom
    line(pos1+(halfLineWidth*4), (pos2*5)-halfLineWidth*3, middlePath-halfLineWidth, (pos2*5)-halfLineWidth*3);
    line(pos1+(halfLineWidth*2), (pos2*5)-halfLineWidth, middlePath-halfLineWidth, (pos2*5)-halfLineWidth);
    line(middlePath+halfLineWidth, (pos2*5)-halfLineWidth*3, width-halfLineWidth*4, (pos2*5)-halfLineWidth*3);
    line(middlePath+halfLineWidth, (pos2*5)-halfLineWidth, width-halfLineWidth*2, (pos2*5)-halfLineWidth);
  }
}