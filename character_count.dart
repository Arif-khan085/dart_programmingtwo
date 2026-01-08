void main() {
  String text = "Dart Programming";
  int count = 0;

  for (int i = 0; i < text.length; i++) {
    if (text[i] != ' ') count++;
  }

  print("Character count: $count");
}
