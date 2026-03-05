class Student {
  // Instance fields
  final String name;
  int _age; // Underscore prefix = library-private

  // Constructor with initializer list
  Student(this.name, this._age);

  // Named constructor
  Student.freshman(this.name) : _age = 18;

  // Getter - computed property
  int get age => _age;

  // Method
  String introduce() => 'I am $name, age $_age';

  // Override toString for debugging
  @override
  String toString() => 'Student($name, $_age)';
}

/**
 * Inheritance & Mixins
 */
// Base class
class Shape {
  double area() => 0;
}

// Inheritance with extends
class Circle extends Shape {
  final double radius;
  Circle(this.radius);

  @override
  double area() => 3.14159 * radius * radius;
}

/**
 * Mixins - reusable behavior without inheritance hierarchy
 */
mixin Loggable {
  void log(String message) => print('[LOG] $message');
}

// Using a mixin with "with" keyword
class TrackedCircle extends Circle with Loggable {
  TrackedCircle(super.radius);

  @override
  double area() {
    var a = super.area();
    log('Computed area: $a'); // From Loggable mixin
    return a;
  }
}

void main() {
  var s1 = Student('Davin', 21);
  var s2 = Student.freshman('Thyda');
  print(s1.introduce());
  print(s2);
  // var shape = Shape();
  var shape = Shape();
  var circle = Circle(10);
  Shape trackedCircle = TrackedCircle(10);
  print('Init Area = ${shape.area()}');
  print('Circle Area = ${circle.area()}');
  print('Circle Area from Loggable: ${trackedCircle.area()}');

  /**
   * Null safety
   */

  // Non-nullable by default - cannot be null
  String name = 'Dart';
  // name = null; // COMPILE ERROR

  // Nullable type - add ? suffix
  String? nickname; // Default to null
  print(nickname); //null

  // Null-aware operators
  String display = nickname ?? 'No nickname'; // If null , use default
  int? length = nickname?.length; // Null-safe member access
  nickname ??= 'Anonymous'; // Assign if null

  // The ! operator - assert non-null (use with caution)
  String definitelyNotNull = nickname!; // Throws if null at runtime
}
