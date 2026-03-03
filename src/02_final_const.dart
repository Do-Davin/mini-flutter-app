void main() {
  // final - set once at runtime
  final DateTime now = DateTime.now(); // OK: value determined at runtime
  final List<int> items = [1, 2, 3];
  items.add(4); // OK: the list contents can change, the reference cannot

  // const - must be fully known at compile time
  const int maxRetries = 3; // OK: literal value
  // const DateTime t = DateTime.now(); // ERROR: not a compile-time value

  // const make deeply immutable objects
  const List<int> frozen = [1, 2, 3];
  // frozen.add(4); // ERROR: cannot modify a const list

  // TESTING places
  print(now);
  print(items);
  print(maxRetries);
  print(frozen);
}

/**
 * NOTE
 * Use const for values that never change and are known before the app runs
 * Use final for values computed once at runtime (API responses, timestamps)
 */
