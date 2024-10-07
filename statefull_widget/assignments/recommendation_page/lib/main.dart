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
  List names = ["Data Science", "Machine learning", "Apache Spark", "amit"];
  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
          title: const Text(
            "Recommended",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(0, 91, 135, 1),
            ),
          ),
          centerTitle: true,
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(5.0),
            child: Divider(
              thickness: 2,
              color: Colors.grey,
            ),
          ),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Text(
                            "Start a new Career",
                            style: TextStyle(
                                fontSize: 21, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      // SingleChildScrollView(
                      //   child: Row(
                      //     children: [
                      //       Container(
                      //         height: MediaQuery.of(context).size.height * 0.1,
                      //         width: MediaQuery.of(context).size.width * 0.3,
                      //         color: Color.fromRGBO(0, 91, 135, 1),
                      //         child: const Text(
                      //           "Data Science",
                      //           style: TextStyle(
                      //             fontSize: 18,
                      //           ),
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // )
                      SizedBox(
                        height: sh * 0.085,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: names.length,
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  borderRadius: BorderRadius.circular(50),
                                  child: Ink(
                                    padding: const EdgeInsets.all(12),
                                    //alignment: Alignment.center,
                                    //margin: EdgeInsets.symmetric(horizontal: 12),
                                    // width: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),

                                      color: (index == 0)
                                          ? const Color.fromARGB(
                                              255, 0, 91, 135)
                                          : const Color.fromARGB(
                                              255, 224, 235, 239),

                                      // color:const Color.fromARGB(255, 0, 91, 135),
                                    ),
                                    child: Text(
                                      names[index],
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: (index == 0)
                                            ? Colors.white
                                            : const Color.fromARGB(
                                                255, 0, 91, 135),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 1,
                        height: MediaQuery.of(context).size.height * 0.195,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 240, 243, 244),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 130,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  child: Image.asset(
                                    "assets/image.jpg",
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Data Science",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    const Text(
                                      "Harvard Univercity",
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      "The word 'lorem', for example, isn't a real Latin word, it's a shortened version of the word 'dolorem', meaning pain.",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const Spacer(),
                                    Row(
                                      children: [
                                        GestureDetector(
                                          child: Container(
                                            alignment: Alignment.center,
                                            height: 25,
                                            width: 90,
                                            decoration: BoxDecoration(
                                                color: const Color.fromARGB(
                                                    255, 219, 232, 237),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: const Text(
                                              "Data Science",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        GestureDetector(
                                          child: Container(
                                            alignment: Alignment.center,
                                            height: 25,
                                            width: 90,
                                            decoration: BoxDecoration(
                                                color: const Color.fromARGB(
                                                    255, 219, 232, 237),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: const Text(
                                              "Machine Learning",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 1,
                        height: MediaQuery.of(context).size.height * 0.195,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 240, 243, 244),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 130,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  child: Image.asset(
                                    "assets/image.jpg",
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "AI & ML",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    const Text(
                                      "Harvard Univercity",
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      "The word 'lorem', for example, isn't a real Latin word, it's a shortened version of the word 'dolorem', meaning pain.",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const Spacer(),
                                    Row(
                                      children: [
                                        GestureDetector(
                                          child: Container(
                                            alignment: Alignment.center,
                                            height: 25,
                                            width: 90,
                                            decoration: BoxDecoration(
                                                color: const Color.fromARGB(
                                                    255, 219, 232, 237),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: const Text(
                                              "Machine Learning",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        GestureDetector(
                                          child: Container(
                                            alignment: Alignment.center,
                                            height: 25,
                                            width: 90,
                                            decoration: BoxDecoration(
                                                color: const Color.fromARGB(
                                                    255, 219, 232, 237),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: const Text(
                                              "Decision Tree",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 1,
                        height: MediaQuery.of(context).size.height * 0.195,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 240, 243, 244),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 130,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  child: Image.asset(
                                    "assets/image.jpg",
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Big Data",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    const Text(
                                      "Harvard Univercity",
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      "The word 'lorem', for example, isn't a real Latin word, it's a shortened version of the word 'dolorem', meaning pain.",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const Spacer(),
                                    Row(
                                      children: [
                                        GestureDetector(
                                          child: Container(
                                            alignment: Alignment.center,
                                            height: 25,
                                            width: 90,
                                            decoration: BoxDecoration(
                                                color: const Color.fromARGB(
                                                    255, 219, 232, 237),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: const Text(
                                              "Big Data",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        GestureDetector(
                                          child: Container(
                                            alignment: Alignment.center,
                                            height: 25,
                                            width: 90,
                                            decoration: BoxDecoration(
                                                color: const Color.fromARGB(
                                                    255, 219, 232, 237),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: const Text(
                                              "Apache Spark",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 1,
                        height: MediaQuery.of(context).size.height * 0.195,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 240, 243, 244),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 130,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  child: Image.asset(
                                    "assets/image.jpg",
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Devops",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    const Text(
                                      "Harvard Univercity",
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      "The word 'lorem', for example, isn't a real Latin word, it's a shortened version of the word 'dolorem', meaning pain.",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const Spacer(),
                                    Row(
                                      children: [
                                        GestureDetector(
                                          child: Container(
                                            alignment: Alignment.center,
                                            height: 25,
                                            width: 90,
                                            decoration: BoxDecoration(
                                                color: const Color.fromARGB(
                                                    255, 219, 232, 237),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: const Text(
                                              "Docker",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        GestureDetector(
                                          child: Container(
                                            alignment: Alignment.center,
                                            height: 25,
                                            width: 90,
                                            decoration: BoxDecoration(
                                                color: const Color.fromARGB(
                                                    255, 219, 232, 237),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: const Text(
                                              "Kubernets",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
