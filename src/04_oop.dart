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

void main() {
  var s1 = Student('Davin', 21);
  var s2 = Student.freshman('Thyda');
  print(s1.introduce());
  print(s2);
}
