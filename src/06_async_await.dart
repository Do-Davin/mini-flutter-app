// Future - represents a value available later
Future<String> fetchUser() async {
  // Simulate network delay
  await Future.delayed(Duration(seconds: 2));
  return 'Davin';
}

// Using async/await
Future<void> main() async {
  print('Loading...');
  loadData();
  String user = await fetchUser(); // Pauses here until done
  print('User: $user');
}

// Error handling with try/catch
Future<void> loadData() async {
  try {
    var data = await fetchUser();
    print('[DATA]: $data');
  } catch (e) {
    print('Error: $e');
  }
}
