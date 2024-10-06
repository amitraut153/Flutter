import 'package:flutter/material.dart';

class AppBar3 extends StatelessWidget {
  const AppBar3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hello Core2Web",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              color: Color.fromARGB(179, 255, 255, 255)),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Container(
          width: 360,
          height: 200,
          color: Colors.blue,
        ),
      ),
    );
  }
}
