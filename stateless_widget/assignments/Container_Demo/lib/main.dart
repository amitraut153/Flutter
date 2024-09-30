import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Genius_Tag",
      home: TestApp(),
    );
  }
}

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First App"),
        backgroundColor: Colors.blue,
      ),
      body: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              color: Colors.amber,
              shape: BoxShape.circle,
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 143, 7),
              shape: BoxShape.circle,
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 7, 255, 61),
              shape: BoxShape.circle,
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 77, 7, 255),
              shape: BoxShape.circle,
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 7, 189),
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
