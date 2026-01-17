void main() {
  List<int> a = [1, 2, 3, 4];
  List<int> b = [3, 4, 5, 6];
  List<int> result = [];

  for (int x in a) {
    if (b.contains(x) && !result.contains(x)) {
      result.add(x);
    }
  }

  print(result);
}
