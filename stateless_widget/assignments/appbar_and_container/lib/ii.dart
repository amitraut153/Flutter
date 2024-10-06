import 'package:flutter/material.dart';

class AppBar2 extends StatelessWidget {
  const AppBar2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          )
        ],
        title: const Text(
          "AppBar and Container 2",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),
        ),
        centerTitle: true,
        backgroundColor: Colors.white70,
      ),
    );
  }
}
