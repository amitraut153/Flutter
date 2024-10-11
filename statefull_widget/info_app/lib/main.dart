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
  TextEditingController nameController2 = TextEditingController();

  List<Map> myData = [];

  String? myName;
  String? compName;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 239, 238, 238),
        appBar: AppBar(
          title: const Text(
            "Info Demo",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: TextField(
                  controller: nameController,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                  decoration: const InputDecoration(
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    hintText: "Enter Your Name",
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: TextField(
                  controller: nameController2,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                  decoration: const InputDecoration(
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    hintText: "Dream Company",
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              ElevatedButton(
                onPressed: () {
                  myName = nameController.text.trim();
                  compName = nameController2.text.trim();
                  if (myName != "" && compName != "") {
                    myData.add({"name": myName, "com": compName});
                  }
                  nameController.clear();
                  nameController2.clear();
                  setState(() {});
                  // if (myName != "") {
                  //   myData.add({
                  //     "myName": myName,
                  //   });
                  //   nameController.clear();
                  //   setState(() {});
                  // }
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: const Text(
                  "Submit",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              Expanded(
                child: ListView.builder(
                    itemCount: myData.length,
                    itemBuilder: (context, index) {
                      return Card(
                        // decoration: BoxDecoration(
                        //   // border: Border.all(
                        //   //   color: Colors.grey,
                        //   // ),
                        //   borderRadius: BorderRadius.circular(5),
                        //   boxShadow: [
                        //     BoxShadow(
                        //       color: const Color.fromARGB(179, 192, 190, 190)
                        //           .withOpacity(0.5),
                        //       spreadRadius: 2,
                        //       blurRadius: 3,
                        //       offset: Offset(0, 4),
                        //     ),
                        //   ],
                        // ),

                        elevation: 20,

                        margin: const EdgeInsets.symmetric(vertical: 8),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Name: ${myData[index]['name']}",
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Dream Company: ${myData[index]['com']}",
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              )
              // Column(
              //   children: [
              //     ListView.builder(
              //       itemCount: myData.length,
              //       itemBuilder: (context, index) {
              //         return Container(
              //           height: 80,
              //           decoration: BoxDecoration(
              //             border: Border.all(),
              //             borderRadius: BorderRadius.circular(5),
              //             color: Colors.amber,
              //           ),
              //         );
              //       },
              //     ),
              //   ],
              // )

              // Column(
              //   children: [
              //     Container(
              //       height: 80,
              // decoration: BoxDecoration(
              //   border: Border.all(),
              //   borderRadius: BorderRadius.circular(5),
              //         // color: Colors.amber,
              //       ),
              //       child: ListView.builder(
              //         itemCount: myData.length,
              //         itemBuilder: (context, index) {
              //           return Padding(
              //             padding: const EdgeInsets.all(8.0),
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Text(
              //                   textAlign: TextAlign.start,
              //                   "Name: ${myData[index]['name']}",
              //                   style: const TextStyle(
              //                     fontSize: 19,
              //                     fontWeight: FontWeight.w600,
              //                   ),
              //                 ),
              //                 Text(
              //                   textAlign: TextAlign.start,
              //                   "Dream Company: ${myData[index]['com']}",
              //                   style: const TextStyle(
              //                     fontSize: 19,
              //                     fontWeight: FontWeight.w600,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           );
              //         },
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
