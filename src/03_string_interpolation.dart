void main() {
  // String interpolation with $variable or ${expression}
  String name = 'Dart';
  int version = 3;
  print('Hello $name $version');
  print('Next Version: ${version + 1}');

  // Multi-line strings with triple quotes
  String json = '''
  {
    "name": "Flutter",
    "version": 3
  }
  ''';

  print(json);

  // Raw strings - no escape processing
  String path =
      r'\Users\dodavin\ITC\Y3-S2\mini-project\src'; // Backslashes kept as-is

  print('My current path: $path');

  print('5 + 5 = ${add(5, 5)}');

  print('5 x 5 = ${multiply(5, 5)}');

  // Calling named parameters
  greet(name: 'Davin');
  greet(name: 'Thyda', title: 'Dr.');

  print(format('play'));
  print(format('play', 'ing'));

  // Anonymous function (lambda)
  var numbers = [3, 1, 4, 1, 5];
  numbers.sort((a, b) => a.compareTo(b));

  // forEach with anonymous function
  numbers.forEach((n) {
    print('Number: $n');
  });

  var evens = filter(numbers, (n) => n % 2 == 0);
  print('Even numbers = $evens');

  print('From Closure function: ${makeCounter()}');
}

// Standard function with return type
int add(int a, int b) {
  return a + b;
}

// Arrow syntax for single-expression functions
int multiply(int a, int b) => a * b;

// Named parameters (wrapped in {})
void greet({required String name, String title = 'Mr.'}) {
  print('Hello, $title $name!');
}

// Optional positional parameters (wrapped in [])
String format(String text, [String suffix = '']) {
  return '$text$suffix';
}

// Higher-order function - accepts a function as parameter
List<int> filter(List<int> items, bool Function(int) test) {
  return items.where(test).toList();
}

// Closure - captures variables from surrounding scope
Function makeCounter() {
  int count = 0;
  return () => ++count;
}
