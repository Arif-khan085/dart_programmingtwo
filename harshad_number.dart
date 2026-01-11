void main() {
  int number = 18;
  int temp = number;
  int sum = 0;

  while (temp > 0) {
    sum += temp % 10;
    temp ~/= 10;
  }

  print(
    number % sum == 0
        ? "$number is a Harshad Number"
        : "$number is not a Harshad Number",
  );
}
