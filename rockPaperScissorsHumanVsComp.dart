import 'dart:io';
import 'dart:math';

void main(){
  print("Welcome to Rock, Paper, Scissors\nType 'exit' to stop the game");
  final random = Random();

//   Rules of the game
  Map<String, String> rules = {
    "rock" : "scissors",
    "paper" : "rock",
    "scissors" : "rock"
  };

//   initial score
  int user = 0;
  int comp = 0;

//   options for computer to chose
  List<String> options = ["rock", "paper", "scissors"];

//   Actual game
  while(true){
    String compChoice = options[random.nextInt(options.length)];
    stdout.write("\nPlease choose Rock, Paper or Scissors: ");
    String? userChoice = stdin.readLineSync()?.toLowerCase();

    if(userChoice == "exit"){
      print("\n\tYou : $user\n\tComputer : $comp\nGOOD DAY :)");
      break;
    }

    if(!options.contains(userChoice)){
      print("INCORRECT CHOISE");
      continue;
    }else if(compChoice == userChoice){
      print("DRAW!!!");
    }else if(rules[compChoice] == userChoice){
      print("Computer Wins: $compChoice vs $userChoice");
      comp +=1;
    }else if(rules[userChoice] == compChoice){
      print("You Win: $userChoice vs $compChoice");
      user +=1;
    }
  }
}
