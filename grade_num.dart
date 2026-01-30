import 'dart:io';

void main() {
  stdout.write("Enter student name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter marks: ");
  double marks = double.parse(stdin.readLineSync()!);

  String grade;

  if (marks >= 90) {
    grade = "A";
  } else if (marks >= 75) {
    grade = "B";
  } else if (marks >= 60) {
    grade = "C";
  } else if (marks >= 50) {
    grade = "D";
  } else {
    grade = "F";
  }

  print("Student: $name");
  print("Marks: $marks");
  print("Grade: $grade");
}
