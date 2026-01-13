import 'dart:io';

void main() {
  String str = stdin.readLineSync()!;
  int count = 0;

  for (var _ in str.runes) {
    count++;
  }

  print("Length: $count");
}
