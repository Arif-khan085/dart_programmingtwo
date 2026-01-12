void main() {
  String sentence = "Dart is very easy";
  List<String> words = sentence.split(" ");

  String reversedSentence = words.reversed.join(" ");
  print(reversedSentence);
}
