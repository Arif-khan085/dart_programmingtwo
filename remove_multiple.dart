void main() {
  List<int> data = [1, 2, 2, 3, 4, 4];
  List<int> unique = [];

  for (int n in data) {
    if (!unique.contains(n)) {
      unique.add(n);
    }
  }

  print(unique);
}
