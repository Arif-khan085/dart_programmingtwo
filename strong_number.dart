void main() {
  int number = 145;
  int temp = number;
  int sum = 0;

  while (temp > 0) {
    int digit = temp % 10;
    int fact = 1;

    for (int i = 1; i <= digit; i++) {
      fact *= i;
    }

    sum += fact;
    temp ~/= 10;
  }

  print(
    sum == number
        ? "$number is a Strong Number"
        : "$number is not a Strong Number",
  );
}
