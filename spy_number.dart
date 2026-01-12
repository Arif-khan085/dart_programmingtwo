void main() {
  int number = 1124;
  int sum = 0;
  int product = 1;
  int temp = number;

  while (temp > 0) {
    int digit = temp % 10;
    sum += digit;
    product *= digit;
    temp ~/= 10;
  }

  print(
    sum == product ? "$number is a Spy Number" : "$number is not a Spy Number",
  );
}
