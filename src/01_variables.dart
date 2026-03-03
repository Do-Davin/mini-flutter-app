void main() {
  // Variable declarations
  var framework = 'Flutter'; // Type inferred as String
  String langauge = 'Dart'; // Explicit type annotation
  final version = '3.22'; // Runtime constant - assigned once
  const pi = 3.14159; // Compile-time constant - must be known at compile time

  // Core built-in types
  int number = 7; // 64-bit integer
  double price = 1499.99; // 64-bit floating-point
  bool isActive = false; // Boolean
  String greeting = 'Hello'; // UTF-16 string
  List<int> numbers = [1, 2, 3]; // Ordered collection
  Map<String, int> ages = {'Davin': 21, 'Thyda': 20}; // Key-value pairs

  print('I love ${framework}');
  print('${framework} Version: v${version}');
  print('${langauge} Framework is ${framework}');
  print('In Math PI ≈ ${pi}');
  print('I love number ${number}');
  print('iPhone 17 Pro Max Price: \$ ${price}');
  print('Town Hall is activated: ${!isActive}');
  print('${greeting}, World!');
  print('List of numbers: ${numbers}');
  print('Davin is ${ages['Davin']} years old.');
  print('Thyda is ${ages['Thyda']} years old.');
}
