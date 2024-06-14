import 'dart:io';
void main(){
  stdout.write("Please give us a number: ");
  int chosenNumber = int.parse(stdin.readLineSync()!);

  for(int i = 1; i<chosenNumber; i++){
    if(chosenNumber % i == 0){
      print(i);
    }
  }
}
