import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(constext) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Container Gradient",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
              height: 200,
              width: 200,
              // alignment: Alignment.bottomLeft,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black, Colors.pink])),
              child: const Text(
                "Hello",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              )),
        ),
      ),
    );
  }
}
