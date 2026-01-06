void main() {
  int number = 121;
  int original = number;
  int reversed = 0;

  while (number > 0) {
    int digit = number % 10;
    reversed = reversed * 10 + digit;
    number ~/= 10;
  }

  if (original == reversed) {
    print("$original is a Palindrome");
  } else {
    print("$original is Not a Palindrome");
  }
}
