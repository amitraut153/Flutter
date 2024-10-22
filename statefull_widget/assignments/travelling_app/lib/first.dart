import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Where do you want to travel?",
          style: GoogleFonts.inter(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: const Color.fromRGBO(255, 255, 255, 1),
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(27, 48, 101, 1),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 30, left: 22, right: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(253, 42),
                    backgroundColor: const Color.fromRGBO(233, 237, 248, 1),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        "Select Destination",
                        style: GoogleFonts.inter(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(52, 111, 249, 1)),
                      ),
                      const Icon(Icons.keyboard_arrow_down_outlined),
                    ],
                  ),
                ),
              ),
              Container(
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(52, 111, 249, 1),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 22.0),
                    child: SizedBox(
                      height: 240,
                      width: 467,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            // width: 145,
                            // height: 50,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Best Deals",
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                      color: const Color.fromRGBO(0, 0, 0, 1)),
                                ),
                                Text(
                                  "Sorted by lower price",
                                  style: GoogleFonts.inter(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                    color:
                                        const Color.fromRGBO(179, 182, 187, 1),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: 467,
                            height: 145,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.only(right: 16, left: 5),
                                  child: Container(
                                    width: 145,
                                    height: 145,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14),
                                      color: const Color.fromRGBO(
                                          233, 237, 248, 1),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        top: 16,
                                        left: 15,
                                        right: 15,
                                        bottom: 15,
                                      ),
                                      child: Container(
                                        height: 114,
                                        width: 114,
                                        color: Colors.amber,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "El Cairo",
                                                  style: GoogleFonts.inter(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color:
                                                          const Color.fromRGBO(
                                                              0, 0, 0, 1)),
                                                ),
                                                const Spacer(),
                                                const Text(
                                                  '* 4.6',
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        228, 161, 2, 1),
                                                  ),
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 19,
                                            ),
                                            Image.asset("assets/image.png"),
                                            const SizedBox(
                                              height: 19,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  
                                              children: [
                                                GestureDetector(
                                                  child: Container(
                                                    width: 47,
                                                    height: 26,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        color: const Color
                                                            .fromRGBO(
                                                            255, 255, 255, 1)),
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          )
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
