void main() {
  List<int> numbers = [1, 2, 2, 3, 3, 3];
  Map<int, int> freq = {};

  for (int n in numbers) {
    freq[n] = (freq[n] ?? 0) + 1;
  }

  print(freq);
}
