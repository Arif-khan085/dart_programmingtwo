void main() {
  String text = "Dart Is Fun";
  int count = 0;

  for (int i = 0; i < text.length; i++) {
    if (text[i].toUpperCase() == text[i] && text[i].toLowerCase() != text[i]) {
      count++;
    }
  }

  print("Uppercase letters: $count");
}
