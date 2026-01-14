import 'dart:io';

void main() {
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);

  while (b != 0) {
    int temp = b;
    b = a % b;
    a = temp;
  }

  print("GCD = $a");
}
