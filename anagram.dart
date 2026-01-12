void main() {
  String a = "listen";
  String b = "silent";

  List<String> listA = a.split('')..sort();
  List<String> listB = b.split('')..sort();

  print(listA.join() == listB.join() ? "Anagrams" : "Not Anagrams");
}
