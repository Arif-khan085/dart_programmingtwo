void main() {
  int a = 12, b = 18;
  int gcd = a;

  int x = a, y = b;
  while (y != 0) {
    int temp = y;
    y = x % y;
    x = temp;
  }
  gcd = x;

  int lcm = (a * b) ~/ gcd;
  print("LCM = $lcm");
}
