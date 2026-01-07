void main() {
  List<int> numbers = [10, 20, 30, 40];
  int sum = 0;

  for (int n in numbers) {
    sum += n;
  }

  double average = sum / numbers.length;
  print("Average = $average");
}
