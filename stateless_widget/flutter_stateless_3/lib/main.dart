// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Container(
//           decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                   colors: [
//                 Colors.orange,
//                 Colors.orange,
//                 Colors.white,
//                 Colors.blue,
//                 Colors.white,
//                 Colors.green,
//                 Colors.green
//               ])),
//           height: 800,
//           width: 420,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     height: 500,
//                     width: 10,
//                     color: Colors.black,
//                   ),
//                   Column(
//                     children: [
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Container(
//                         height: 40,
//                         width: 150,
//                         color: Colors.orange,
//                       ),
//                       Container(
//                         child: Image.network(
//                             "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9ruGW0mxpUtIZOLyMaS2dSMztyUgD6E-msaAzwwXFzHjC9_7FqOy2oqsFCl5bnyFHgho&usqp=CAU"),
//                         height: 40,
//                         width: 150,
//                         color: const Color.fromARGB(255, 255, 255, 255),
//                       ),
//                       Container(height: 40, width: 150, color: Colors.green),
//                     ],
//                   )
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

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
