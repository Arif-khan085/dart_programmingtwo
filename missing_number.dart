void main() {
  List<int> arr = [1, 2, 3, 5];
  int n = arr.length + 1;

  int expectedSum = n * (n + 1) ~/ 2;
  int actualSum = 0;

  for (int x in arr) {
    actualSum += x;
  }

  print("Missing Number: ${expectedSum - actualSum}");
}
