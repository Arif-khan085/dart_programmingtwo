import 'dart:io';

void main() {
  String s = stdin.readLineSync()!;
  List<String> words = s.split(' ');
  String result = "";

  for (int i = words.length - 1; i >= 0; i--) {
    result += words[i] + " ";
  }

  print(result.trim());
}
