import 'dart:io';

void main() {
  String s = stdin.readLineSync()!;
  int num = 0;

  for (int i = 0; i < s.length; i++) {
    num = num * 10 + (s.codeUnitAt(i) - 48);
  }

  print(num);
}
