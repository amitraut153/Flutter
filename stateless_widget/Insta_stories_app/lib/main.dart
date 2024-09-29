import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Instagram",
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Insta Stories",
          style:
              TextStyle(color: Colors.black, fontFamily: "Arial", fontSize: 24),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 5,
                  )),
              margin: const EdgeInsets.all(8),
            ),
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 5,
                  )),
              margin: const EdgeInsets.all(8),
            ),
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 5,
                  )),
              margin: const EdgeInsets.all(8),
            ),
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 5,
                  )),
              margin: const EdgeInsets.all(8),
            ),
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 5,
                  )),
              margin: const EdgeInsets.all(8),
            ),
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 5,
                  )),
              margin: const EdgeInsets.all(8),
            ),
          ],
        ),
      ),
    );
  }
}
