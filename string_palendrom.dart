void main() {
  String text = "madam";
  String reversed = text.split('').reversed.join('');

  if (text == reversed) {
    print("$text is a Palindrome");
  } else {
    print("$text is Not a Palindrome");
  }
}
