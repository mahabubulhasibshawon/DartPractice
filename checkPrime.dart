import 'dart:io';
void main(){
  stdout.write("Please give us a number: ");
  int chosenNumber = int.parse(stdin.readLineSync()!);
  checkPrime(chosenNumber);
}
void checkPrime(int num){
  List<int> prime = [
  for(var i = 1; i<=num; i++)
    if(num % i == 0) i
  ];

  prime.length == 2 ? print("$num is a prime number ")
      : print("$num is not a prime number \nDividors of $num are $prime");
}
