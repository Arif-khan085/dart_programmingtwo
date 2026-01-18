abstract class Vehicle {
  void start();
}

class Bike extends Vehicle {
  @override
  void start() {
    print("Bike starts");
  }
}

void main() {
  Bike b = Bike();
  b.start();
}
