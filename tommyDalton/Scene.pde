class Scene{


private int red;
private int green;
private int blue;


  Scene(int red, int green ,int blue){
  
    this.red=red;
    this.blue=blue;
    this.green=green;
  }



void Scenery(){

background(135, 206, 235);
  scoreBox();// Calls the Score Box Method to create the the small black box in the corner containing the previous score.
  
  fill(0);
  text(score,20,20);//Displays the score.
  
  fill(red,green,blue);  //Draws the ground.
  rect(0,350,width,height*8);

  for(int plants=0;plants<10;plants++){ //This for loop creates trees and clouds.
  
    fill(101,67,33);
    rect(plants*150,350,30,-200);// Draws the tree logs.
    
    fill(0,255,0);
    ellipse(plants*150+15,150,150,50);// Draws the tree canopy.
  
          for(int clouds=1 ;clouds<6;clouds++){// Draws Clouds.
             fill(255);
             ellipse(clouds*200,50,200,50);
             }
  }

}


//--/Getters/--//
public int getRed(){
  return red;
}

public int getBlue(){
  return blue;
}

public int getGreen(){
  return green;
}




//--/Setters/--//
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
