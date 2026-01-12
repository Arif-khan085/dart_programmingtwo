void main() {
  List<int> numbers = [4, 9, 1, 32, 15];

  numbers.sort();
  int difference = numbers.last - numbers.first;

  print("Difference = $difference");
}
