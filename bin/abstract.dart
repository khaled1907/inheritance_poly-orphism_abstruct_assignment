abstract class Shape {
  String color;

  Shape({required this.color});

  getArea();

  toString();
}

class Rectangle2 extends Shape {
  int length, width;

  Rectangle2({required this.length, required this.width, required super.color});

  @override
  getArea() {
    return width * length;
  }

  @override
  toString() {
    return "width is $width length is $length color is $color";
  }
}

class Triangle extends Shape {
  int base, height;

  Triangle({required this.height, required this.base, required super.color});

  @override
  getArea() {
    return 0.5 * base * height;
  }

  @override
  toString() {
    return " base = $base height  = $height and color is $color";
  }
}

main() {
  Shape shape = Rectangle2(length: 4, width: 4, color: "white");
  Shape shape2 = Triangle(height: 4, base: 4, color: 'Black');

  print(shape.getArea());
  print(shape.toString());
  print('----------------------------');
  print(shape2.getArea());
  print(shape2.toString());
}
