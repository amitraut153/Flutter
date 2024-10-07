import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  TextEditingController nameController = TextEditingController();

  List<String> playerList = [];

  String? myName;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "TextField ListView Demo",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: nameController,
                style: const TextStyle(fontSize: 25),
                decoration: const InputDecoration(
                  hintText: "Enter Your Name",
                  hintStyle: TextStyle(fontSize: 25, color: Colors.grey),
                  border: OutlineInputBorder(),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                print("Pressed");
                myName = nameController.text.trim();
                print("My Name: $myName");
                if (myName != "") {
                  playerList.add(myName!);
                  print("Playerlist length: ${playerList.length}");
                  nameController.clear();

                  setState(() {});
                }
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                  'Add Data',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: ListView.builder(
                    itemCount: playerList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Text(
                        " ${playerList[index]}",
                        style: const TextStyle(
                          fontSize: 25,
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
