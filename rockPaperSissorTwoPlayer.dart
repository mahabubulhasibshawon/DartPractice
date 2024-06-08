/*
* Make a two-player Rock-Paper-Scissors game between two players

Ask for player's input, compare them, print out a message to the winner.
* */
import 'dart:io';

void main(){
  print("player 1 : ");
  String? p1= stdin.readLineSync();
  print("player 2 : ");
  String? p2= stdin.readLineSync();
  if(p1 == 'R' && p2 == 'R'){
    print("DRAW");
  }
  else if(p1 == 'P' && p2 == 'P'){
    print("DRAW");
  }
  else if(p1 == 'S' && p2 == 'S'){
    print("DRAW");
  }
  else if(p1 == 'R' && p2 == 'P'){
    print("PLAYER 2 WINS");
  }
  else if(p1 == 'P' && p2 == 'R'){
    print("PLAYER 1 WINS");
  }
  else if(p1 == 'R' && p2 == 'S'){
    print("PLAYER 1 WINS");
  }
  else if(p1 == 'S' && p2 == 'R'){
    print("PLAYER 2 WINS");
  }
  else if(p1 == 'P' && p2 == 'S'){
    print("PLAYER 2 WINS");
  }
  else if(p1 == 'S' && p2 == 'P'){
    print("PLAYER 1 WINS");
  }
  else{
    print("WRONG ENTRY");
  }
}
