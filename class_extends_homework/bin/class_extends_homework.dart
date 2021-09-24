import '../lib/class_extends_homework.dart';

void main() {
  var cuboid = Cuboid(1, 2, 3);
  var cube = Cube(2);
  print('''
  Cuboid Volume ${cuboid.Volume}
  Cuboid Surface Area ${cuboid.SurfaceArea}
  Cube Volume ${cube.Volume}
  Cube Surface Area ${cube.SurfaceArea}
  ''');
}
