void main() {
  List<int> arr = [10, 20, 30, 40];
  int key = 30;
  bool found = false;

  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == key) {
      found = true;
      break;
    }
  }

  print(found ? "Element Found" : "Element Not Found");
}
