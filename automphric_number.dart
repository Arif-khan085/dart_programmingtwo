void main() {
  int number = 25;
  int square = number * number;

  String numStr = number.toString();
  String squareStr = square.toString();

  print(
    squareStr.endsWith(numStr)
        ? "$number is Automorphic"
        : "$number is not Automorphic",
  );
}
