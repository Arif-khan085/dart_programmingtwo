import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  String binary = "";

  while (n > 0) {
    binary = (n % 2).toString() + binary;
    n ~/= 2;
  }

  print("Binary: $binary");
}
