void main() {
  String number = "10101";
  bool isBinary = RegExp(r'^[01]+$').hasMatch(number);

  print(isBinary ? "Binary Number" : "Not a Binary Number");
}
