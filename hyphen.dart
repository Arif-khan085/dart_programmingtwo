import 'dart:io';

void main() {
  String str = stdin.readLineSync()!;
  String result = "";

  for (int i = 0; i < str.length; i++) {
    result += (str[i] == ' ') ? '-' : str[i];
  }

  print(result);
}
