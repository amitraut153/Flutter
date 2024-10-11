import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

int count = 7;
deleteNode() {
  count--;
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "To-do list",
            style: GoogleFonts.quicksand(
              textStyle: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),
          backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 18, right: 18),
          child: ListView.builder(
            itemCount: count,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 10),
                child: Container(
                  // height: 112,
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width * 0.86,
                  // width: 330,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(250, 232, 232, 1)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 25),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color:
                                      const Color.fromRGBO(255, 255, 255, 1)),
                              child: SizedBox(
                                height: 55,
                                width: 55,
                                child: ClipRRect(
                                    child: Image.asset(
                                        "assets/images/gallary.png")),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 13, left: 15, right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Lorem Ipsum is simply setting industry",
                                    style: GoogleFonts.quicksand(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text(
                                      "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                                      style: GoogleFonts.quicksand(
                                        textStyle: const TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Row(
                        children: [
                          const Padding(
                              padding: EdgeInsets.only(
                            left: 10,
                          )),
                          Text(
                            "10 Oct 2024",
                            style: GoogleFonts.quicksand(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {},
                            child: const Icon(
                              Icons.edit_outlined,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                          ),
                          const SizedBox(
                            width: 19,
                          ),
                          GestureDetector(
                            onTap: () {
                              deleteNode();
                              setState(() {});
                            },
                            child: const Icon(
                              Icons.delete_outline,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),

        // body: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: SizedBox(
        //     child: ListView.builder(
        //       itemCount: 4,
        //       itemBuilder: (context, index) {
        //         return Column(
        //           children: [
        //             Column(
        //               children: [
        //                 Padding(
        //                   padding: const EdgeInsets.only(
        //                       top: 10, left: 6, right: 6, bottom: 5),
        //                   child: Column(
        //                     children: [
        //                       Container(
        //                         height: 160,
        //                         width: 370,
        //                         decoration: BoxDecoration(
        //                           borderRadius: BorderRadius.circular(13),
        //                           color:
        //                               const Color.fromARGB(104, 223, 227, 229),
        //                         ),
        //                         child: Padding(
        //                           padding: const EdgeInsets.only(
        //                               top: 12, bottom: 12, left: 15),
        //                           child: Column(
        //                             children: [
        //                               Row(
        //                                 children: [
        //                                   SizedBox(
        //                                     height: 60,
        //                                     width: 60,
        //                                     child: ClipRRect(
        //                                       borderRadius:
        //                                           BorderRadius.circular(18),
        //                                       child: Image.asset(
        //                                           "assets/page.jpg"),
        //                                     ),
        //                                   ),
        //                                   const SizedBox(
        //                                     width: 11,
        //                                   ),
        //                                   const Expanded(
        //                                     child: Column(
        //                                       crossAxisAlignment:
        //                                           CrossAxisAlignment.start,
        //                                       children: [
        //                                         SizedBox(
        //                                           width: 280,
        //                                           height: 20,
        //                                           child: Text(
        //                                             "Lorem Ipsum is simply setting industry",
        //                                             style: TextStyle(
        //                                               fontSize: 15,
        //                                               fontWeight:
        //                                                   FontWeight.w700,
        //                                             ),
        //                                           ),
        //                                         ),
        //                                         SizedBox(
        //                                           height: 5,
        //                                         ),
        //                                         SizedBox(
        //                                           width: 260,
        //                                           height: 50,
        //                                           child: Text(
        //                                             "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
        //                                             style: TextStyle(
        //                                                 fontSize: 12,
        //                                                 fontWeight:
        //                                                     FontWeight.w500),
        //                                           ),
        //                                         ),
        //                                         Row(
        //                                           children: [
        //                                             Padding(
        //                                               padding:
        //                                                   const EdgeInsets.only(
        //                                                       top: 5,
        //                                                       bottom: 2),
        //                                             ),
        //                                             Padding(
        //                                               padding:
        //                                                   const EdgeInsets.only(
        //                                                       top: 5,
        //                                                       bottom: 2,
        //                                                       left: 10),
        //                                             ),
        //                                           ],
        //                                         ),
        //                                       ],
        //                                     ),
        //                                   )
        //                                 ],
        //                               ),
        //                               Row(
        //                                 children: [
        //                                   SizedBox(
        //                                     child: Text("10 July 2024"),
        //                                   ),
        //                                   Spacer(),
        //                                   GestureDetector(
        //                                       child: Row(
        //                                     children: [
        //                                       Icon(Icons.edit),
        //                                       SizedBox(
        //                                         width: 12,
        //                                       ),
        //                                       Icon(Icons.delete)
        //                                     ],
        //                                   ))
        //                                 ],
        //                               )
        //                             ],
        //                           ),
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ],
        //         );
        //       },
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
