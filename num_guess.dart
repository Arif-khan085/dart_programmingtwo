import 'dart:io';
import 'dart:math';

class GuessingGame {
  late int _secretNumber;
  int attempts = 0;
  List<int> guessHistory = [];

  GuessingGame() {
    _secretNumber = Random().nextInt(100) + 1;
  }

  void start() {
    print("🎯 Guess the number (1 - 100)");

    while (true) {
      stdout.write("Enter your guess: ");
      int guess = int.parse(stdin.readLineSync()!);

      attempts++;
      guessHistory.add(guess);

      if (guess == _secretNumber) {
        print("\n🎉 Correct! You guessed it in $attempts attempts.");
        break;
      } else if (guess < _secretNumber) {
        print("Too low! ⬆ Try again.");
      } else {
        print("Too high! ⬇ Try again.");
      }

      _giveHint();
    }

    _showSummary();
  }

  void _giveHint() {
    if (attempts >= 3) {
      int difference = (_secretNumber - guessHistory.last).abs();
      if (difference <= 5) {
        print("🔥 You're very close!");
      } else if (difference <= 15) {
        print("🌡 Warm!");
      } else {
        print("❄ Cold!");
      }
    }
  }

  void _showSummary() {
    print("\n📊 Game Summary:");
    print("Total Attempts: $attempts");
    print("Your Guesses: $guessHistory");
  }
}

void main() {
  GuessingGame game = GuessingGame();
  game.start();
}
