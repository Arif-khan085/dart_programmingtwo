import 'dart:io';

void main() {
  String str = stdin.readLineSync()!;
  String result = "";

  for (int i = 0; i < str.length; i++) {
    if (!"aeiouAEIOU".contains(str[i])) {
      result += str[i];
    }
  }

  print(result);
}
