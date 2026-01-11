void main() {
  int number = 1023;
  String numStr = number.toString();

  if (numStr.contains('0')) {
    print("$number is a Duck Number");
  } else {
    print("$number is not a Duck Number");
  }
}
