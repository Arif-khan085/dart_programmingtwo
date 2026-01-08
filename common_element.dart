void main() {
  List<int> a = [1, 2, 3, 4];
  List<int> b = [3, 4, 5, 6];

  List<int> common = a.where((e) => b.contains(e)).toList();
  print("Common elements: $common");
}
