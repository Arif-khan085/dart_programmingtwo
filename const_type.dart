class Employee {
  int id;
  String name;

  Employee(this.id, this.name);

  void show() {
    print("ID: $id, Name: $name");
  }
}

void main() {
  Employee e = Employee(101, "Anita");
  e.show();
}
