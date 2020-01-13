import javax.swing.*;
Bluesquare bs;
Scene sc;
RedSquare rs;


void setup(){
  size(1200,400);
  bs = new Bluesquare(90000000,300,50,50);
  sc = new Scene(0,255,0);
  rs = new RedSquare (width,width+150);

  
}


//--/Variables/--//
  int speed = 5;
  int playcycle = 0;
  int death = 0;
  int score=0;
  int finalScore=0;
  int i = 0;
  float total = 0;

//--/Array Variables and Start up Inputs/--//
  
  String name = JOptionPane.showInputDialog("Please input your name below.\n"+"Please input three characters or above.","TED");
  
  String arcName = name.substring(1,3); // arcName will only display the first three characters of the string you enter at the start.
  
  int Lives = Integer.parseInt(JOptionPane.showInputDialog("How many lives would you like to have?","3"));
  
  float divider = Lives;

//--/Array Declaration/--//
int average[] = new int [Lives];

void draw(){
  
  
  
  
  
 //--/Blue square and Scenery/--//
 // Draws the scenery and blue square.
  sc.Scenery();
  bs.colour(0,0,255);
  bs.createSquare();
  
//--/Red Square and dodge button/--//

  rs.createRedSquare();
  rs.redCubeMove();
  death(); 
  bs.dodge(); 
 
//--/Array and score averager/--//
  if(playcycle == Lives){
      for(int i= 0; i<Lives;i++){
        
        total += average[i];
        println("Arr Val"+i+"="+average[i]);
      }
       println( (float)total/divider);
       JOptionPane.showMessageDialog(null, "Congrats " +arcName+ "."+"\nYour average score was: "
       +total/divider+"\nYour total score was"+total+
       "\nThe game will now exit, Thank you for Playing."); 
        
      exit();//Exits the program.
  }      
 
}
 
//--/Methods/--//

// Death has to be located in the main file as it causes the program to flip out if it is placed in class.

void death(){//Resets your score upon the death method being called and also displays your previous score

  if((rs.redSquareX0<=100)&&(rs.redSquareX0>=50)&&(bs.yPos==300)){
    
        rs.redSquareX0=800;
        rs.redSquareX1=950;
        speed=5;
       
        finalScore  = score;
        average[i]=finalScore; //Assigns the value for the array when the death occurs.
        i++;
        score=0;
        playcycle++;
        
    } 
    else if((rs.redSquareX1<=100)&&(rs.redSquareX1>=50)&&(bs.yPos==250)){
    
        rs.redSquareX0=800;
        rs.redSquareX1=950;
        speed=5;
       
        finalScore=score;
        average[i]=finalScore; //Assigns the value for the array when the death occurs.
        i++;
        score=0;
        playcycle++;
      }
      
} 
 
void scoreBox(){// Creates the score box visible in the top right corner of the screen when you are playing.
 
   fill(0);
   rect(width-150,0,200,20);
   fill(255);
   text("Last Round : "+finalScore,width-120,15);
 }





   
