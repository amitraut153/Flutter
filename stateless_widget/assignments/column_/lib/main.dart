import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Column_demo",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text(
            "Column",
            style: TextStyle(
              fontSize: 28,
              color: Colors.black,
              fontWeight: FontWeight.w900,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.red,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.red,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.red,
              )
            ],
          ),
        ),
      ),
    );
  }
}
