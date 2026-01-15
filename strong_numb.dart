import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  int temp = n, sum = 0;

  while (temp > 0) {
    int d = temp % 10;
    int fact = 1;
    for (int i = 1; i <= d; i++) {
      fact *= i;
    }
    sum += fact;
    temp ~/= 10;
  }

  print(sum == n ? "Strong Number" : "Not Strong");
}
