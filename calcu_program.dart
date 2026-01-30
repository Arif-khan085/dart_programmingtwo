import 'dart:io';

void main() {
  print("Simple Calculator");

  stdout.write("Enter first number: ");
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter second number: ");
  double num2 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter operator (+, -, *, /): ");
  String operator = stdin.readLineSync()!;

  double result;

  switch (operator) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        print("Error! Division by zero.");
        return;
      }
      break;
    default:
      print("Invalid operator.");
      return;
  }

  print("Result: $result");
}
