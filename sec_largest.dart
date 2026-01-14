void main() {
  List<int> nums = [10, 45, 23, 89, 67];

  int largest = nums[0];
  int second = nums[0];

  for (int n in nums) {
    if (n > largest) {
      second = largest;
      largest = n;
    } else if (n > second && n != largest) {
      second = n;
    }
  }

  print("Second Largest: $second");
}
