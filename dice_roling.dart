import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();

  print("🎲 Dice Roller Game");

  while (true) {
    stdout.write("Roll the dice? (y/n): ");
    String choice = stdin.readLineSync()!.toLowerCase();

    if (choice == 'y') {
      int roll = random.nextInt(6) + 1;
      print("🎯 You rolled a $roll");
    } else if (choice == 'n') {
      print("👋 Thanks for playing!");
      break;
    } else {
      print("❌ Invalid choice. Enter y or n.");
    }
  }
}
