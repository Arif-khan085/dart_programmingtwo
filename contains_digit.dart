void main() {
  String text = "12345";
  bool isNumeric = RegExp(r'^\d+$').hasMatch(text);

  print(isNumeric ? "Only digits" : "Contains non-digit");
}
