abstract class GeometricObject {
  String color = "white";
  bool filled = false;

  GeometricObject();

  GeometricObject.specified({required this.color, required this.filled});

  toString() {
    return "the color is $color and filled is $filled";
  }

  getArea();
}

class Triangle extends GeometricObject {
  double side1 = 1, side2 = 1, side3 = 1;

  Triangle();

  Triangle.specified(
      {required this.side1, required this.side2, required this.side3});

  getArea() {
    return 0.5 * side3 * side2;
  }

  @override
  String toString() {
    return "side1 = $side1 " + "side 2 = $side2 " + "side3 = $side3 ";
  }
}

class Rectangle extends GeometricObject {
  double height = 1, width = 1;

  Rectangle();

  Rectangle.specified({required this.width, required this.height});

  @override
  getArea() {
    return width * height;
  }

  @override
  String toString() {
    return "height = $height " + "width = $width";
  }
}

main() {
  Triangle triangle = Triangle();
  Rectangle rectangle = Rectangle();
  GeometricObject triangle2 = Triangle.specified(side1: 10, side2: 20, side3: 30);
  Rectangle rectangle2 = Rectangle.specified(width: 5, height: 6);
  print(triangle.getArea());
  print(triangle.toString());
  print("------------------------------------");
  print(triangle2.getArea());
  print(triangle2.toString());
  print("------------------------------------");
  print(rectangle.getArea());
  print(rectangle.toString());
  print("------------------------------------");
  print(rectangle2.getArea());
  print(rectangle2.toString());
  print("------------------------------------");
}
