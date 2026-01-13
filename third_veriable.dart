import 'dart:io';

void main() {
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);

  a = a + b;
  b = a - b;
  a = a - b;

  print("a = $a");
  print("b = $b");
}
