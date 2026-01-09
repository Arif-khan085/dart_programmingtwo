void printNumbers(int n) {
  if (n > 100) return;
  print(n);
  printNumbers(n + 1);
}

void main() {
  printNumbers(1);
}
