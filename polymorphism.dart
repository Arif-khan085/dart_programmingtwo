class Shape {
  void draw() {
    print("Drawing shape");
  }
}

class Circle extends Shape {
  @override
  void draw() {
    print("Drawing circle");
  }
}

void main() {
  Shape s = Circle();
  s.draw();
}
