class Tower4 extends GameObject
{  
  boolean collision;
  boolean cash;
  Tower4()
  {
    starPos = new PVector(pos1, pos2*5);
    collision = false;
    centre.x = (starPos.x+((pos1/2))*7);
    centre.y = starPos.y + (pos2/2);
    cash = false;
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
    fill(127);
    rect(centre.x, centre.y, 60, 50);
    fill(0, 255, 255);
    ellipse(centre.x, centre.y, 40, 40);
    if(cash == false)
    {
      textSize(15);
      text("$200", centre.x - 10, centre.y + 40);
    }
    cash = false;
  }
  
  void Place()
  {
    if(mouseX > (pos1 + halfLineWidth*4) && mouseX < middlePath - halfLineWidth && 
    mouseY > halfLineWidth*3 && mouseY < hrzMidPath - halfLineWidth)
    {
      if(mouseX < halfFirstBoxW)
      {
        if(mouseY < halfFirstBoxV)
        {
          towerCheck[0] = true;
        }
        else
        {
          towerCheck[2] = true;
        }
      }
      else
      {
        if(mouseY < halfFirstBoxV)
        {
          towerCheck[1] = true;
        }
        else
        {
          towerCheck[3] = true;
        }
      }
    }
    if(mouseX < (width - halfLineWidth*4) && mouseX > middlePath + halfLineWidth && 
    mouseY > halfLineWidth*3 && mouseY < hrzMidPath - halfLineWidth)
    {
      if(mouseX < halfRightBoxW)
      {
        if(mouseY < halfFirstBoxV)
        {
          towerCheck[4] = true;
        }
        else
        {
          towerCheck[6] = true;
        }
      }
      else
      {
        if(mouseY < halfFirstBoxV)
        {
          towerCheck[5] = true;
        }
        else
        {
          towerCheck[7] = true;
        }
      }
    }
    if(mouseX > (pos1 + halfLineWidth*4) && mouseX < middlePath - halfLineWidth && 
    mouseY > hrzMidPath + halfLineWidth && mouseY < pos2*5 - (halfLineWidth*3))
    {
     if(mouseX < halfFirstBoxW)
     {
       if(mouseY < halfBottomBoxV)
       {
         towerCheck[8] = true;
       }
       else
       {
         towerCheck[10] = true;
       }
     }
     else
     {
       if(mouseY < halfBottomBoxV)
       {
         towerCheck[9] = true;
       }
       else
       {
         towerCheck[11] = true;
       }
     }
    }
    if(mouseX < (width - halfLineWidth*4) && mouseX > middlePath + halfLineWidth && 
    mouseY > hrzMidPath + halfLineWidth && mouseY < pos2*5 - (halfLineWidth*3))
    {
     if(mouseX < halfRightBoxW)
     {
       if(mouseY < halfBottomBoxV)
       {
         towerCheck[12] = true;
       }
       else
       {
         towerCheck[14] = true;
       }
     }
     else
     {
       if(mouseY < halfBottomBoxV)
       {
         towerCheck[13] = true;
       }
       else
       {
         towerCheck[15] = true;
       }
     }
    }
  }
  
  void Update()
  {
    if(towerCheck[0] == true)
    {
     centre.x = ((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4);
     centre.y = ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3;
     cash = true;
     Render();
    }
    else if(towerCheck[1] == true)
    {
    centre.x = (((middlePath - halfLineWidth) - halfFirstBoxW)/2) + (halfFirstBoxW);
    centre.y = ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3;
    cash = true;
    Render();
    }
    if(towerCheck[2] == true)
    {
    centre.x = ((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4);
    centre.y = (((hrzMidPath - halfLineWidth) - halfFirstBoxV)/2) + halfFirstBoxV;
    cash = true;
    Render();
    }
    if(towerCheck[3] == true)
    {
    centre.x = (((middlePath - halfLineWidth) - halfFirstBoxW)/2) + (halfFirstBoxW);
    centre.y = (((hrzMidPath - halfLineWidth) - halfFirstBoxV)/2) + halfFirstBoxV; 
    cash = true;
    Render();
    }
    if(towerCheck[4] == true)
    {
    centre.x = ((halfRightBoxW - (middlePath+halfLineWidth))/2) + (middlePath+halfLineWidth);
    centre.y = ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3;
    cash = true;
    Render();
    }
    if(towerCheck[5] == true)
    {
    centre.x = (((width - (halfLineWidth*4)) - halfRightBoxW)/2) + halfRightBoxW;
    centre.y = ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3;
    cash = true;
    Render();
    }
    if(towerCheck[6] == true)
    {
    centre.x = ((halfRightBoxW - (middlePath+halfLineWidth))/2) + (middlePath+halfLineWidth);
    centre.y = (((hrzMidPath - halfLineWidth) - halfFirstBoxV)/2) + halfFirstBoxV;
    cash = true;
    Render();
    }
    if(towerCheck[7] == true)
    {
    centre.x = (((width - (halfLineWidth*4)) - halfRightBoxW)/2) + halfRightBoxW;
    centre.y = (((hrzMidPath - halfLineWidth) - halfFirstBoxV)/2) + halfFirstBoxV;
    cash = true;
    Render();
    }
    if(towerCheck[8] == true)
    {
    centre.x = ((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4);
    centre.y = ((((pos2*5) - (halfLineWidth*3)) - halfBottomBoxV)/2) + (hrzMidPath + halfLineWidth); 
    cash = true;
    Render();
    }
    if(towerCheck[9] == true)
    {
    centre.x = (((middlePath - halfLineWidth) - halfFirstBoxW)/2) + (halfFirstBoxW);
    centre.y = ((((pos2*5) - (halfLineWidth*3)) - halfBottomBoxV)/2) + (hrzMidPath + halfLineWidth); 
    cash = true;
    Render();
    }
    if(towerCheck[10] == true)
    {
    centre.x = ((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4);
    centre.y = ((((pos2*5) - (halfLineWidth*3)) - halfBottomBoxV)/2) + halfBottomBoxV;
    cash = true;
    Render();
    }
    if(towerCheck[11] == true)
    {
    centre.x = (((middlePath - halfLineWidth) - halfFirstBoxW)/2) + (halfFirstBoxW);
    centre.y = ((((pos2*5) - (halfLineWidth*3)) - halfBottomBoxV)/2) + halfBottomBoxV;
    cash = true;
    Render();
    }
    if(towerCheck[12] == true)
    {
    centre.x = ((halfRightBoxW - (middlePath+halfLineWidth))/2) + (middlePath+halfLineWidth);
    centre.y = ((((pos2*5) - (halfLineWidth*3)) - halfBottomBoxV)/2) + (hrzMidPath + halfLineWidth);
    cash = true;
    Render();
    }
    if(towerCheck[13] == true)
    {
    centre.x = (((width - (halfLineWidth*4)) - halfRightBoxW)/2) + halfRightBoxW;
    centre.y = ((((pos2*5) - (halfLineWidth*3)) - halfBottomBoxV)/2) + (hrzMidPath + halfLineWidth); 
    cash = true;
    Render();
    }
    if(towerCheck[14] == true)
    {
    centre.x = ((halfRightBoxW - (middlePath+halfLineWidth))/2) + (middlePath+halfLineWidth);
    centre.y = ((((pos2*5) - (halfLineWidth*3)) - halfBottomBoxV)/2) + halfBottomBoxV; 
    cash = true;
    Render();
    }
    if(towerCheck[15] == true)
    {
    centre.x = (((width - (halfLineWidth*4)) - halfRightBoxW)/2) + halfRightBoxW;
    centre.y = ((((pos2*5) - (halfLineWidth*3)) - halfBottomBoxV)/2) + halfBottomBoxV;
    cash = true;
    Render();
    }
  }
}