class Printer {
  void printData() {}
}

class Scanner {
  void scan() {}
}

class AllInOne implements Printer, Scanner {
  @override
  void printData() {
    print("Printing...");
  }

  @override
  void scan() {
    print("Scanning...");
  }
}

void main() {
  AllInOne a = AllInOne();
  a.printData();
  a.scan();
}
