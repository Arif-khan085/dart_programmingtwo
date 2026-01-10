void main() {
  int a = 48, b = 18;

  while (b != 0) {
    int temp = b;
    b = a % b;
    a = temp;
  }

  print("GCD = $a");
}
