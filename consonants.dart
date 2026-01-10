void main() {
  String text = "Dart Language";
  int count = 0;

  for (int i = 0; i < text.length; i++) {
    if ("bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ".contains(text[i])) {
      count++;
    }
  }

  print("Consonant count: $count");
}
