void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6];
  int count = 0;

  for (int n in numbers) {
    if (n % 2 == 0) {
      count++;
    }
  }

  print("Even numbers count: $count");
}
