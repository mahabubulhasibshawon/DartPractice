import 'dart:io';

void main() {
  print('Enter a number:');

  // Read input from the user and convert to an integer
  int number = int.parse(stdin.readLineSync()!);

  // Check if the number is even or odd
  if (number % 2 == 0) {
    print('The number $number is even.');
  } else {
    print('The number $number is odd.');
  }
}
