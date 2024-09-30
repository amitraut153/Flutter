import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text("Indian_Flag"),
        //   centerTitle: true,
        //   backgroundColor: Colors.red,
        // ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 500,
                    width: 10,
                    color: Colors.black,
                  ),
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 130,
                        height: 35,
                        color: Colors.orange,
                      ),
                      Container(
                          width: 130,
                          height: 35,
                          color: Colors.white,
                          child: Image.network(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Ashoka_Chakra.svg/1200px-Ashoka_Chakra.svg.png")),
                      Container(
                        width: 130,
                        height: 35,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
