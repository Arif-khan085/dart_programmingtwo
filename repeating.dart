import 'dart:io';

void main() {
  String str = stdin.readLineSync()!;
  Map<String, int> count = {};

  for (int i = 0; i < str.length; i++) {
    count[str[i]] = (count[str[i]] ?? 0) + 1;
  }

  for (int i = 0; i < str.length; i++) {
    if (count[str[i]] == 1) {
      print("First non-repeating character: ${str[i]}");
      return;
    }
  }

  print("No non-repeating character found");
}
