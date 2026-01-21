import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();
  final secretNumber = random.nextInt(100) + 1; // 1–100
  int? guess;
  int attempts = 0;

  print("🎯 Welcome to the Number Guessing Game!");
  print("I'm thinking of a number between 1 and 100.");
  print("Can you guess it?");

  while (guess != secretNumber) {
    stdout.write("Enter your guess: ");
    final input = stdin.readLineSync();

    if (input == null) {
      print("Please enter a valid number.");
      continue;
    }

    guess = int.tryParse(input);

    if (guess == null) {
      print("That's not a number. Try again.");
      continue;
    }

    attempts++;

    if (guess < secretNumber) {
      print("Too low! 📉");
    } else if (guess > secretNumber) {
      print("Too high! 📈");
    } else {
      print("🎉 Correct! You guessed it in $attempts attempts.");
    }
  }
}
