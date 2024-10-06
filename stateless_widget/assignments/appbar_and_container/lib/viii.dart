import 'package:flutter/material.dart';

class AppBar8 extends StatelessWidget {
  const AppBar8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "AppBar and Contaier 8",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          // color: const Color.fromARGB(179, 225, 223, 223),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 5),
            // border: Border.all()
          ),
        ),
      ),
    );
  }
}
