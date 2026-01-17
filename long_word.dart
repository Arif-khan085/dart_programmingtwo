import 'dart:io';

void main() {
  String s = stdin.readLineSync()!;
  List<String> words = s.split(' ');
  String longest = words[0];

  for (String w in words) {
    if (w.length > longest.length) {
      longest = w;
    }
  }

  print("Longest word: $longest");
}
