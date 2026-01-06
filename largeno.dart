void main() {
  List<int> numbers = [10, 45, 23, 89, 12];

  int largest = numbers[0];
  for (int num in numbers) {
    if (num > largest) {
      largest = num;
    }
  }

  print("Largest number is: $largest");
}
