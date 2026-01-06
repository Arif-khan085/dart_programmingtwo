void main() {
  String text = "Flutter Development";
  int count = 0;

  for (int i = 0; i < text.length; i++) {
    if ("aeiouAEIOU".contains(text[i])) {
      count++;
    }
  }

  print("Number of vowels: $count");
}
