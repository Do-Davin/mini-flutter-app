void main() {
  // List - ordered, index-accessible
  List<String> fruits = ['apple', 'banana', 'cherry'];
  fruits.add('date');
  var first = fruits[0];
  var mapped = fruits.map((f) => f.toUpperCase()).toList();

  // Set - unordered, unique elements
  Set<int> unique = {1, 2, 3}; // Valid
  // Set<int> unique = {1, 2, 3, 2, 1}; // Invalid each elements must unique

  // Map - Key-value pairs
  Map<String, double> prices = {
    'iPhone 17 Pro Max': 1499.99,
    'Lambo': 1000000.0,
    'Table': 10.0,
  };

  prices['Chair'] = 5.0;
  print('${prices['Chair']}');
  var keys = prices.keys.toList();
  print(keys);

  // Spread operator
  var more = [...fruits, 'elderberry'];
  print(more);

  // Collection if / for
  var flags = [
    'base',
    if (true) 'feature_a', // Conditionally include
    for (var i in [1, 2]) 'item_$i', // Generate items
  ];
  print(flags);
}
