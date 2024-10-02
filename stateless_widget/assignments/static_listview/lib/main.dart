import "package:flutter/material.dart";

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("Device width: ${MediaQuery.of(context).size.width}");
    print("Device height: ${MediaQuery.of(context).size.height}");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "ListView Demo",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
            Image.network(
                "https://phlearn.com/wp-content/uploads/2023/04/Photo-Editing-Before.jpg?w=1462&quality=99&strip=all"),
            const Icon(
              Icons.favorite,
              color: Colors.red,
              size: 30,
            ),
            const Text(
              "Bhari",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Image.network(
                "https://phlearn.com/wp-content/uploads/2020/01/Example-02_After.jpg?w=767&quality=99&strip=all"),
            const Icon(
              Icons.favorite,
              color: Colors.red,
              size: 30,
            ),
            const Text(
              "Bhari",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            GestureDetector(
              onTap: () {
                print("Button Pressed");
              },
              child: Container(
                height: 50,
                color: Colors.amber,
                child: const Text(
                  "Press me",
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
