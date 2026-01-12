void main() {
  String text = "Apple";
  String firstChar = text[0].toLowerCase();

  print(
    "aeiou".contains(firstChar)
        ? "Starts with a vowel"
        : "Does not start with a vowel",
  );
}
