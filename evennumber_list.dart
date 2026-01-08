void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6];
  int sum = 0;

  for (int n in numbers) {
    if (n % 2 == 0) sum += n;
  }

  print("Sum of even numbers: $sum");
}
