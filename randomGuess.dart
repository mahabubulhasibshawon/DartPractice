import 'dart:io';
import 'dart:math';

void main() {
  // Create an instance of the Random class
  final random = Random();
  
  // Generate a random number between 1 and 100
  int randomNumber = random.nextInt(100) + 1;
  
  int guessCount = 0;
  bool guessedCorrectly = false;
  
  print('I have generated a random number between 1 and 100. Can you guess it?');

  while (!guessedCorrectly) {
    stdout.write('Enter your guess: ');
    String? input = stdin.readLineSync();
    
    if (input != null) {
      int guess = int.parse(input);
      guessCount++;
      
      if (guess < randomNumber) {
        print('Too low!');
      } else if (guess > randomNumber) {
        print('Too high!');
      } else {
        print('Exactly right! You guessed the number in $guessCount tries.');
        guessedCorrectly = true;
      }
    }
  }
}
