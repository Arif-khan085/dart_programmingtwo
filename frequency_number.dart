import 'dart:io';

void main() {
  String str = stdin.readLineSync()!;
  Map<String, int> freq = {};

  for (int i = 0; i < str.length; i++) {
    String ch = str[i];
    freq[ch] = (freq[ch] ?? 0) + 1;
  }

  freq.forEach((k, v) => print("$k : $v"));
}
