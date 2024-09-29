import 'package:flutter/material.dart';

void main() {
  runApp(const PlayerApp());
}

class PlayerApp extends StatefulWidget {
  const PlayerApp({super.key});

  @override
  State<PlayerApp> createState() => _PlayerAppState();
}

class _PlayerAppState extends State<PlayerApp> {
  int _counter = 0;

  List<String> playerList = <String>[
    "assets/images/rohit.jpg",
    "assets/images/MSD.png",
    "assets/images/virat.jpeg",
    "assets/images/yuvraj-singh.png",
    "assets/images/suryakumar.png",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Players App",
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Players App'),
            centerTitle: true,
            backgroundColor: Colors.orange[600]),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                playerList[_counter],
                height: 350,
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: () {
                if (_counter > 0) {
                  _counter--;
                } else {
                  _counter = playerList.length - 1;
                }
                setState(() {});
              },
              child: const Icon(Icons.arrow_back),
            ),
            const SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              onPressed: () {
                if (_counter < playerList.length - 1) {
                  _counter++;
                } else {
                  _counter = 0;
                }
                setState(() {});
              },
              child: const Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}
