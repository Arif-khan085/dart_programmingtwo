void main() {
  List<int> arr = [1, 2, 3, 4, 5];
  bool sorted = true;

  for (int i = 0; i < arr.length - 1; i++) {
    if (arr[i] > arr[i + 1]) {
      sorted = false;
      break;
    }
  }

  print(sorted ? "Sorted" : "Not Sorted");
}
