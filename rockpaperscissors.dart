import 'dart:io';
import 'dart:math';

//Return random value
String getComputerMove() {
  Random rand = new Random();
  int move = rand.nextInt(3);
  
  switch (move) {
    case 0:
      return "Bato";
      break;
    case 1:
      return "Papel";
      break;
    case 2:
      return "Gunting";
      break;
    default:
      break;
  }
}

//Comparison conditions
String whoWon(String playerMove, String computerMove) {
  if (playerMove == computerMove) {
    return "Tie";
  } else if (playerMove == "Bato" && computerMove == "Gunting") {
    return "You Win!";
  } else if (playerMove == "Gunting" && computerMove == "Papel") {
    return "You Win!";
  } else if (playerMove == "Papel" && computerMove == "Bato") {
    return "You Win!";
  } else {
    return "Computer Wins!";
  }
}

//start game
String getPlayerMove() {
  print("(P)apel, (G)unting, (B)ato, what's your pick?!");
  String selection = stdin.readLineSync().toUpperCase();
  
  switch (selection) {
    case "B":
      return "Bato";
      break;
    case "P":
      return "Papel";
      break;
    case "G":
      return "Gunting";
      break;
    default:
      return "Quit";
      break;
  }
}
// game infi loop
void main() {
  while(true) {
    print("Papel, Gunting, Bato, GO!");
    String playerMove = getPlayerMove();
    
    if (playerMove == "Quit") {
      return print ("Thanks for playing! :D");
    }
    
    print("You picked $playerMove");
    String computerMove = getComputerMove();
    print("Computer picked $computerMove");
    print(whoWon(playerMove, computerMove));
  }
}