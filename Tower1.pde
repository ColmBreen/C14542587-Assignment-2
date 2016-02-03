class Tower1 extends GameObject
{  
  boolean collision;
  Tower1()
  {
    starPos = new PVector(pos1, pos2*5);
    collision = false;
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
     rectMode(CENTER);
     stroke(255);
     fill(255);
     starPos.x = ((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4);
     starPos.y = ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3;
     rect(starPos.x, starPos.y, 60, 50);
     fill(255, 0, 0);
     rect(starPos.x, starPos.y, 40, 30); 
    }
    else if(towerCheck[1] == true)
    {
    rectMode(CENTER);
    stroke(255);
    fill(255);
    starPos.x = (((middlePath - halfLineWidth) - halfFirstBoxW)/2) + (halfFirstBoxW);
    starPos.y = ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3;
    rect(starPos.x, starPos.y, 60, 50);
    fill(255, 0, 0);
    rect(starPos.x, starPos.y, 40, 30); 
    }
    if(towerCheck[2] == true)
    {
    rectMode(CENTER);
    stroke(255);
    fill(255);
    starPos.x = ((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4);
    starPos.y = (((hrzMidPath - halfLineWidth) - halfFirstBoxV)/2) + halfFirstBoxV;
    rect(starPos.x, starPos.y, 60, 50);
    fill(255, 0, 0);
    rect(starPos.x, starPos.y, 40, 30); 
    }
    if(towerCheck[3] == true)
    {
    rectMode(CENTER);
    stroke(255);
    fill(255);
    starPos.x = (((middlePath - halfLineWidth) - halfFirstBoxW)/2) + (halfFirstBoxW);
    starPos.y = (((hrzMidPath - halfLineWidth) - halfFirstBoxV)/2) + halfFirstBoxV;
    rect(starPos.x, starPos.y, 60, 50);
    fill(255, 0, 0);
    rect(starPos.x, starPos.y, 40, 30); 
    }
    if(towerCheck[4] == true)
    {
    rectMode(CENTER);
    stroke(255);
    fill(255);
    starPos.x = ((halfRightBoxW - (middlePath+halfLineWidth))/2) + (middlePath+halfLineWidth);
    starPos.y = ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3;
    rect(starPos.x, starPos.y, 60, 50);
    fill(255, 0, 0);
    rect(starPos.x, starPos.y, 40, 30); 
    }
    if(towerCheck[5] == true)
    {
    rectMode(CENTER);
    stroke(255);
    fill(255);
    starPos.x = (((width - (halfLineWidth*4)) - halfRightBoxW)/2) + halfRightBoxW;
    starPos.y = ((halfFirstBoxV - halfLineWidth * 3)/2) + halfLineWidth*3;
    rect(starPos.x, starPos.y, 60, 50);
    fill(255, 0, 0);
    rect(starPos.x, starPos.y, 40, 30);
    }
    if(towerCheck[6] == true)
    {
    rectMode(CENTER);
    stroke(255);
    fill(255);
    starPos.x = ((halfRightBoxW - (middlePath+halfLineWidth))/2) + (middlePath+halfLineWidth);
    starPos.y = (((hrzMidPath - halfLineWidth) - halfFirstBoxV)/2) + halfFirstBoxV;
    rect(starPos.x, starPos.y, 60, 50);
    fill(255, 0, 0);
    rect(starPos.x, starPos.y, 40, 30); 
    }
    if(towerCheck[7] == true)
    {
    rectMode(CENTER);
    stroke(255);
    fill(255);
    starPos.x = (((width - (halfLineWidth*4)) - halfRightBoxW)/2) + halfRightBoxW;
    starPos.y = (((hrzMidPath - halfLineWidth) - halfFirstBoxV)/2) + halfFirstBoxV;
    rect(starPos.x, starPos.y, 60, 50);
    fill(255, 0, 0);
    rect(starPos.x, starPos.y, 40, 30); 
    }
    if(towerCheck[8] == true)
    {
    rectMode(CENTER);
    stroke(255);
    fill(255);
    starPos.x = ((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4);
    starPos.y = ((((pos2*5) - (halfLineWidth*3)) - halfBottomBoxV)/2) + (hrzMidPath + halfLineWidth);
    rect(starPos.x, starPos.y, 60, 50);
    fill(255, 0, 0);
    rect(starPos.x, starPos.y, 40, 30); 
    }
    if(towerCheck[9] == true)
    {
    rectMode(CENTER);
    stroke(255);
    fill(255);
    starPos.x = (((middlePath - halfLineWidth) - halfFirstBoxW)/2) + (halfFirstBoxW);
    starPos.y = ((((pos2*5) - (halfLineWidth*3)) - halfBottomBoxV)/2) + (hrzMidPath + halfLineWidth);
    rect(starPos.x, starPos.y, 60, 50);
    fill(255, 0, 0);
    rect(starPos.x, starPos.y, 40, 30); 
    }
    if(towerCheck[10] == true)
    {
    rectMode(CENTER);
    stroke(255);
    fill(255);
    starPos.x = ((halfFirstBoxW - (pos1 + halfLineWidth*4))/2) + (pos1 + halfLineWidth*4);
    starPos.y = ((((pos2*5) - (halfLineWidth*3)) - halfBottomBoxV)/2) + halfBottomBoxV;
    rect(starPos.x, starPos.y, 60, 50);
    fill(255, 0, 0);
    rect(starPos.x, starPos.y, 40, 30); 
    }
    if(towerCheck[11] == true)
    {
    rectMode(CENTER);
    stroke(255);
    fill(255);
    starPos.x = (((middlePath - halfLineWidth) - halfFirstBoxW)/2) + (halfFirstBoxW);
    starPos.y = ((((pos2*5) - (halfLineWidth*3)) - halfBottomBoxV)/2) + halfBottomBoxV;
    rect(starPos.x, starPos.y, 60, 50);
    fill(255, 0, 0);
    rect(starPos.x, starPos.y, 40, 30); 
    }
    if(towerCheck[12] == true)
    {
    rectMode(CENTER);
    stroke(255);
    fill(255);
    starPos.x = ((halfRightBoxW - (middlePath+halfLineWidth))/2) + (middlePath+halfLineWidth);
    starPos.y = ((((pos2*5) - (halfLineWidth*3)) - halfBottomBoxV)/2) + (hrzMidPath + halfLineWidth);
    rect(starPos.x, starPos.y, 60, 50);
    fill(255, 0, 0);
    rect(starPos.x, starPos.y, 40, 30); 
    }
    if(towerCheck[13] == true)
    {
    rectMode(CENTER);
    stroke(255);
    fill(255);
    starPos.x = (((width - (halfLineWidth*4)) - halfRightBoxW)/2) + halfRightBoxW;
    starPos.y = ((((pos2*5) - (halfLineWidth*3)) - halfBottomBoxV)/2) + (hrzMidPath + halfLineWidth);
    rect(starPos.x, starPos.y, 60, 50);
    fill(255, 0, 0);
    rect(starPos.x, starPos.y, 40, 30); 
    }
    if(towerCheck[14] == true)
    {
    rectMode(CENTER);
    stroke(255);
    fill(255);
    starPos.x = ((halfRightBoxW - (middlePath+halfLineWidth))/2) + (middlePath+halfLineWidth);
    starPos.y = ((((pos2*5) - (halfLineWidth*3)) - halfBottomBoxV)/2) + halfBottomBoxV;
    rect(starPos.x, starPos.y, 60, 50);
    fill(255, 0, 0);
    rect(starPos.x, starPos.y, 40, 30); 
    }
    if(towerCheck[15] == true)
    {
    rectMode(CENTER);
    stroke(255);
    fill(255);
    starPos.x = (((width - (halfLineWidth*4)) - halfRightBoxW)/2) + halfRightBoxW;
    starPos.y = ((((pos2*5) - (halfLineWidth*3)) - halfBottomBoxV)/2) + halfBottomBoxV;
    rect(starPos.x, starPos.y, 60, 50);
    fill(255, 0, 0);
    rect(starPos.x, starPos.y, 40, 30); 
    }
    
    for(int i = gameObjects.size() - 1; i >= 0; i--)
    {
    GameObject go = gameObjects.get(i);
     if(go instanceof Tower1)
     {
        for(int j = gameObjects.size() - 1; j >= 0; j--)
        {
          GameObject other = gameObjects.get(j);
          if(other instanceof Enemy1)
          {
            if(go.starPos.dist(other.starPos) < 90)
            {
              if(frameCount % 30 == 0)
              {
                other.health -=1;
                println(other.health);
              }
            }
          }
        }
      }
    }
  }
}