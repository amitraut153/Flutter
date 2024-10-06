import 'package:flutter/material.dart';

class AppBar6 extends StatelessWidget {
  const AppBar6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "AppBar and Contaier 6",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.yellow,
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.orange,
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.green,
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.pink,
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.purple,
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.teal,
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
