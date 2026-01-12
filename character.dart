void main() {
  String text = "programming";
  String ch = "g";
  int count = 0;

  for (int i = 0; i < text.length; i++) {
    if (text[i] == ch) count++;
  }

  print("Occurrences of '$ch': $count");
}
