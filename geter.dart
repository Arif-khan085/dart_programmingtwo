class BankAccount {
  double _balance = 0;

  double get balance => _balance;

  void deposit(double amount) {
    _balance += amount;
  }
}

void main() {
  BankAccount acc = BankAccount();
  acc.deposit(5000);
  print("Balance: ${acc.balance}");
}
