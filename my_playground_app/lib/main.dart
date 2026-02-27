import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PLAYGROUND APP',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Text(
                "Welcome Back",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              const Text(
                "Continue your coding journey today",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 20),
              _buildTopCard(),
              const SizedBox(height: 25),

              _buildGridTitle(),
              const SizedBox(height: 15),

              _buildGrid(),
              const SizedBox(height: 25),

              _buildListTitle(),
              const SizedBox(height: 15),

              _buildListSection(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomBar(),
    );
  }
}

Widget _buildTopCard() {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Colors.blueAccent,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // LEFT SIDE
        Row(
          children: [
            const CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                'https://davin-do-portfolio.vercel.app/assets/profile-Bj5H-Fi4.png',
              ),
            ),
            const SizedBox(width: 15),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, I'm Davin!",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Level Pro Developer",
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ],
        ),

        // RIGHT SIDE (Fake Pie Chart for now)
        SizedBox(
          width: 70,
          height: 70,
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: 70,
                height: 70,
                child: CircularProgressIndicator(
                  value: 0.7,
                  strokeWidth: 6,
                  backgroundColor: Colors.white10,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.greenAccent),
                ),
              ),
              const Text(
                "70%",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _buildGrid() {
  return GridView.count(
    crossAxisCount: 2,
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    crossAxisSpacing: 15,
    mainAxisSpacing: 15,
    children: [
      _languageCard(
        'JavaScript',
        'https://cdn-icons-png.flaticon.com/512/5968/5968292.png',
      ),
      _languageCard(
        'Java',
        'https://cdn-icons-png.flaticon.com/512/226/226777.png',
      ),
      _languageCard(
        'C++',
        'https://cdn-icons-png.flaticon.com/512/6132/6132222.png',
      ),
      _languageCard(
        'Python',
        'https://cdn-icons-png.flaticon.com/512/5968/5968350.png',
      ),
    ],
  );
}

Widget _languageCard(String title, String imageUrl) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.grey.shade200,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(imageUrl, width: 60, height: 60),
        const SizedBox(height: 10),
        Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      ],
    ),
  );
}

Widget _buildBottomBar() {
  return BottomNavigationBar(
    currentIndex: 0,
    items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
      BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'SETTINGS'),
      BottomNavigationBarItem(icon: Icon(Icons.person), label: 'PROFILE'),
    ],
  );
}

Widget _buildGridTitle() {
  return const Text(
    "Programming Languages",
    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  );
}

Widget _buildListTitle() {
  return const Text(
    "Recommended Practice",
    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  );
}

Widget _buildListSection() {
  return Column(
    children: [
      _buildListItem(
        "Loops & Conditions",
        "Master control flow statements",
        Icons.code,
      ),
      _buildListItem(
        "Functions & Methods",
        "Understand reusable logic",
        Icons.functions,
      ),
      _buildListItem("Data Structures", "Arrays, Lists, Maps", Icons.storage),
      _buildListItem(
        "OOP Concepts",
        "Classes, Objects, Inheritance",
        Icons.account_tree,
      ),
    ],
  );
}

Widget _buildListItem(String title, String subtitle, IconData icon) {
  return Container(
    margin: const EdgeInsets.only(bottom: 12),
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.grey.shade100,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Row(
      children: [
        Icon(icon, color: Colors.blueAccent),
        const SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(subtitle, style: const TextStyle(color: Colors.grey)),
          ],
        ),
      ],
    ),
  );
}
