void main() {
  int number = 5874;
  int lastDigit = number % 10;

  int firstDigit = number;
  while (firstDigit >= 10) {
    firstDigit ~/= 10;
  }

  int sum = firstDigit + lastDigit;
  print("Sum of first and last digit = $sum");
}
