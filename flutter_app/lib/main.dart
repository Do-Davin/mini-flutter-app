import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyHome());
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'Mini-App',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.yellow,
              child: Text(
                'Container',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.blueAccent,
              child: Text(
                'Container 2',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
