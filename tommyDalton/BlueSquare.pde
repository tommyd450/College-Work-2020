class Bluesquare{
  
private float xPos;
private float yPos;
private float squareWidth;
private float squareHeight;
private int red;
private int green;
private int blue;

Bluesquare(float xPos,float yPos,float squareWidth,float squareHeight ){

 
   if((xPos < width%2)&&(xPos>0)){
    this.xPos=xPos;
  } 
  else {
  this.xPos=50;
  }
  
  this.yPos=yPos;
  this.squareWidth=squareWidth;
  this.squareHeight=squareHeight;
  
  
}

    void createSquare(){
      fill(red,green,blue);
      rect(xPos,yPos, squareWidth,squareHeight);
    }

    void colour(int red, int green, int blue){
       this.red=red;
       this.green=green;
       this.blue=blue;
       fill(red,green,blue); 
    }

    void dodge(){
    if(keyPressed){//When any key is pressed the Y value for the square is changed and when it is released it is reset back to its orignal Y position.
        yPos=250;
      } 
      else{
        yPos=300;
    }


}

//---//Getters//--//

public float getXPos(){
  return xPos;
}

public float getYPos(){
  return yPos;
}

public float getSquareWidth(){
  return squareWidth;
}

public float getsquareHeight(){
  return squareHeight;  
}

public int getRed(){
  return red;
}

public int getBlue(){
  return blue;
}

public int getGreen(){
  return green;
}

//---//Setters//---//

public void setXpos(float xPos){
  if((xPos>0)&&(xPos<width%2))
  this.xPos=xPos;// This is not to be changed as fecal matter will hit the fan
}

public void setYpos(float yPos){
  this.yPos=yPos;// This is not to be changed as fecal matter will hit the fan
}

public void setSquareWidth(float squareWidth){
  this.squareWidth=squareWidth;        // This is not to be changed as fecal atter will hit the fan
}  

public void setSquareHeight(float squareHeight){
  this.squareHeight=squareHeight; // This is not to be changed as fecal atter will hit the fan
}

public void setRed(int red){// These can be changed.
  this.red=red;
}

public void setGreen(int green){// These can be changed.
  this.green=green;
}


public void setBlue(int blue){// Do not change this as it would completely defeat the purpose of naming this class BlueSquare.
  this.blue=blue;
}

}
