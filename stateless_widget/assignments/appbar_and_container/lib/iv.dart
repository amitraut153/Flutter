import 'package:flutter/material.dart';

class AppBar4 extends StatelessWidget {
  const AppBar4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "AppBar and Container 4",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
        backgroundColor: Colors.white70,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.orange,
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
