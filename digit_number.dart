void main() {
  int number = 98765;
  int count = 0;

  while (number != 0) {
    number ~/= 10;
    count++;
  }

  print("Digit count: $count");
}
