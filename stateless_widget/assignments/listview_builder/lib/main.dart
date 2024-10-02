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
            "ListView Builder Demo",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
          itemCount: 50,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext, int index) {
            return Text(
              "Index: $index",
            );
          },
        ),
      ),
    );
  }
}
