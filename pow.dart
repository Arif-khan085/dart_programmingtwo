import 'dart:io';

void main() {
  int base = int.parse(stdin.readLineSync()!);
  int exp = int.parse(stdin.readLineSync()!);
  int result = 1;

  for (int i = 1; i <= exp; i++) {
    result *= base;
  }

  print(result);
}
