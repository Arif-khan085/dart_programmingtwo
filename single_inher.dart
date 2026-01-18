class Animal {
  void sound() {
    print("Animal makes sound");
  }
}

class Dog extends Animal {
  void bark() {
    print("Dog barks");
  }
}

void main() {
  Dog d = Dog();
  d.sound();
  d.bark();
}
