void main() {
  List<int> nums = [1, 2, 3, 4, 5, 6];
  int even = 0, odd = 0;

  for (int n in nums) {
    if (n % 2 == 0) {
      even++;
    } else {
      odd++;
    }
  }

  print("Even: $even");
  print("Odd: $odd");
}
