import 'dart:io';
import 'dart:math';

void main() {
  var random = Random();
  int secretNumber = random.nextInt(100) + 1;
  int guess = 0;

  print("Guess the number (between 1 and 100)");

  while (guess != secretNumber) {
    stdout.write("Enter your guess: ");
    guess = int.parse(stdin.readLineSync()!);

    if (guess > secretNumber) {
      print("Too high! Try again.");
    } else if (guess < secretNumber) {
      print("Too low! Try again.");
    } else {
      print("🎉 Correct! The number was $secretNumber");
    }
  }
}
