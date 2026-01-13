import 'dart:io';
import 'dart:math';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  int temp = n;
  int digits = n.toString().length;
  int sum = 0;

  while (temp > 0) {
    int d = temp % 10;
    sum += pow(d, digits).toInt();
    temp ~/= 10;
  }

  print(sum == n ? "Armstrong Number" : "Not Armstrong");
}
