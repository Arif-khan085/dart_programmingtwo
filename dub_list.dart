void main() {
  List<int> nums = [1, 2, 3, 2, 4, 5, 1];
  List<int> dup = [];

  for (int i = 0; i < nums.length; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      if (nums[i] == nums[j] && !dup.contains(nums[i])) {
        dup.add(nums[i]);
      }
    }
  }

  print(dup);
}
