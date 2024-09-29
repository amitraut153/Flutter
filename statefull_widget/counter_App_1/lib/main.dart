import "package:flutter/material.dart";

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Counter App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Counter App"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Text("$count"),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: 40,
            ),
            FloatingActionButton(
              onPressed: () {
                count--;
                setState(() {});
              },
              child: const Icon(Icons.remove),
            ),
            Spacer(),
            FloatingActionButton(
              onPressed: () {
                count++;
                setState(() {});
              },
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
