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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 252, 246, 246),
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(
                Icons.location_on,
                size: 32,
                color: Color.fromARGB(255, 240, 79, 95),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        "Clover-Park",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.expand_more,
                          size: 28,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    "Viman nagar,Pune",
                    style: TextStyle(fontSize: 13),
                  )
                ],
              ),
              const SizedBox(
                width: 1,
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                size: 28,
                color: Colors.black87,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 195, 190, 190)
                            .withOpacity(0.3),
                        // spreadRadius: 0.1,
                        blurRadius: 1,
                        offset: const Offset(0, 4),
                      )
                    ]),
                child: const TextField(
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                      hintText: "Restaurant name or Dish....",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,

                      // border: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(10),
                      // ),
                      contentPadding: EdgeInsets.symmetric(vertical: 9)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
