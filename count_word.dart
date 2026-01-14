import 'dart:io';

void main() {
  String sentence = stdin.readLineSync()!;
  int count = sentence.trim().split(RegExp(r'\s+')).length;

  print("Word count: $count");
}
