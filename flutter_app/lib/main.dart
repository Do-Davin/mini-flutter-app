import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Profile',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Student Profile')),
        body: const Center(
          child: StudentCard(
            name: 'Do Davin',
            major: 'Software Engineering',
            year: 3,
          ),
        ),
      ),
    );
  }
}

class StudentCard extends StatelessWidget {
  final String name;
  final String major;
  final int year;
  const StudentCard({
    super.key,
    required this.name,
    required this.major,
    required this.year,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 8),
            Text('Major: $major'),
            Text('Year: $year'),
          ],
        ),
      ),
    );
  }
}

class InteractiveStudentCard extends StatefulWidget {
  const InteractiveStudentCard({super.key});

  @override
  State<InteractiveStudentCard> createState() => _InteractiveStudentCardState();
}

class _InteractiveStudentCardState extends State<InteractiveStudentCard> {
  bool _isFavorite = false; // Mutable state
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: ListTile(
        leading: const CircleAvatar(child: Icon(Icons.person)),
        title: const Text('Do Davin'),
        subtitle: const Text('Software Engineering - Year 3'),
        trailing: IconButton(
          icon: Icon(
            _isFavorite ? Icons.star : Icons.star_border,
            color: _isFavorite ? Colors.amber : null,
          ),
          onPressed: () => setState(() {
            _isFavorite = !_isFavorite;
          }),
        ),
      ),
    );
  }
}
