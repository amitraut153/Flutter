import 'dart:developer';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

int num = 1;
bool flag = true;
void count(flag) {
  if (!flag) {
    if (num > 0) num--;
  } else {
    num++;
  }
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Shoes",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w800,
              color: Color.fromARGB(255, 108, 9, 165),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart),
              color: const Color.fromARGB(255, 108, 9, 165),
              iconSize: 28,
            )
          ],
          backgroundColor: Colors.white,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 350,
              width: 400,
              color: Colors.white,
              child: Image.network(
                "https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 5),
              child: Row(
                children: [
                  Text(
                    "Nike Air Force 07",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 108, 9, 165)),
                    child: const Text(
                      "SHOES",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 108, 9, 165)),
                    child: const Text(
                      "FOOTWEAR",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Hi my name is Amit from Akola distric, my village name is Danapur, tq. Telhara Hi my name is Amit from Akola distric, my village name is Danapur, tq. Telhara",
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                const SizedBox(
                  child: Text(
                    "Quality",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  child: GestureDetector(
                    onTap: () {
                      log("Ckick");
                      count(false);
                      setState(() {});
                    },
                    child: const Icon(
                      Icons.remove,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  // width: MediaQuery.of(context).size.width,
                  width: 50,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 208, 198, 198),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "$num",
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  child: GestureDetector(
                    onTap: () {
                      log("Click");
                      count(true);
                      setState(() {});
                    },
                    child: const Icon(
                      Icons.add,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 300,
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 108, 9, 165),
                ),
                child: const Text(
                  "PURCHASE",
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 18,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}