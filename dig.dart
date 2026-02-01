import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  int count = 0;

  do {
    count++;
    n ~/= 10;
  } while (n != 0);

  print("Digits: $count");
}
