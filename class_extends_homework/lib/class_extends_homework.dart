class Cuboid {
  double _length = 0.0;
  double _width = 0.0;
  double _height = 0.0;

  set length(double length) {
    try {
      positiveChecker(length);
      _length = length;
    } catch (e) {
      print(e);
    }
  }

  double get length => _length;

  set width(double width) {
    try {
      positiveChecker(width);
      _width = width;
    } catch (e) {
      print(e);
    }
  }

  double get width => _width;

  set height(double height) {
    try {
      positiveChecker(height);
      _height = height;
    } catch (e) {
      print(e);
    }
  }

  double get height => _height;

  double get SurfaceArea =>
      2 * (length * width + length * height + width * height);

  double get Volume => length * width * height;

// Как сделать приватный метод?
  void positiveChecker(double value) {
    if (value < 0) {
      throw Exception("$value < 0");
    }
  }

  Cuboid(double length, double width, double height) {
    this.length = length;
    this.width = width;
    this.height = height;
  }
}

class Cube extends Cuboid {
  Cube(double length) : super(length, length, length);
}
