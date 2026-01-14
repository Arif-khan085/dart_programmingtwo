import 'dart:io';

void main() {
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);

  int x = a, y = b;

  while (y != 0) {
    int temp = y;
    y = x % y;
    x = temp;
  }

  int lcm = (a * b) ~/ x;
  print("LCM = $lcm");
}
