import 'dart:io';

void main() {
  int year = int.parse(stdin.readLineSync()!);

  if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) {
    print("Leap Year");
  } else {
    print("Not a Leap Year");
  }
}
