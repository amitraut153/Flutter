import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

int num = 0;
int num2 = 0;

// void count() {
//   if (num != 0) {
//     num--;
//   } else {
//     num++;
//   }
// }

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: (IconButton(
              onPressed: () {}, icon: const Icon(Icons.arrow_back_ios))),
          title: const Text(
            "My Cart",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w800,
              color: Colors.blue,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Expanded(
            child: Column(
              children: [
                Container(
                    height: 140,
                    width: MediaQuery.of(context).size.height,
                    // width: 300,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      color: Color.fromARGB(255, 235, 235, 235),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: SvgPicture.asset(
                              "assets/shoes.svg",
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            width: 18,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Nike Shoes",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800),
                                ),
                                const Text(
                                  "With iconic style and legendary comfort, on repeat",
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Text(
                                        "\$570.00",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800),
                                      ),
                                      Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  if (num != 0) {
                                                    num--;
                                                  }
                                                });
                                              },
                                              icon: const Icon(Icons.remove)),
                                          Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.blue),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(5),
                                              ),
                                            ),
                                            alignment: Alignment.center,
                                            child: Text(
                                              "$num",
                                              style:
                                                  const TextStyle(fontSize: 20),
                                            ),
                                          ),
                                          IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  num++;
                                                });
                                              },
                                              icon: const Icon(Icons.add)),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
                const SizedBox(
                  height: 15,
                ),
                Container(
                    height: 140,
                    width: MediaQuery.of(context).size.height,
                    // width: 300,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      color: Color.fromARGB(255, 235, 235, 235),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: SvgPicture.asset(
                              "assets/shoes.svg",
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            width: 18,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Nike Shoes",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800),
                                ),
                                const Text(
                                  "With iconic style and legendary comfort, on repeat",
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Text(
                                        "\$570.00",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800),
                                      ),
                                      Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  if (num2 != 0) {
                                                    num2--;
                                                  }
                                                });
                                              },
                                              icon: const Icon(Icons.remove)),
                                          Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.blue),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(5),
                                              ),
                                            ),
                                            child: Text(
                                              "$num2",
                                              style: TextStyle(fontSize: 20),
                                            ),
                                            alignment: Alignment.center,
                                          ),
                                          IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  num2++;
                                                });
                                              },
                                              icon: const Icon(Icons.add)),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
                const Spacer(),
                const Row(
                  children: [
                    Text(
                      "Subtitle: ",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                    ),
                    Spacer(),
                    Text(
                      "\$800.00",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  children: [
                    Text(
                      "Delivery Fee: ",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                    ),
                    Spacer(),
                    Text(
                      "\$5.00",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  children: [
                    Text(
                      "Discount: ",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                    ),
                    Spacer(),
                    Text(
                      "\$40%",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: const Center(
                    child: Text(
                      "Checkout for ₹480",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
