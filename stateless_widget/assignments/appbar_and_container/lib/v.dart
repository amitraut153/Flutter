// import 'package:appbar_and_container/iv.dart';
import 'package:flutter/material.dart';

class AppBar5 extends StatelessWidget {
  const AppBar5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "AppBar and Container 5",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Image.network(
                "https://t3.ftcdn.net/jpg/05/69/30/42/360_F_569304262_RGVohUth9wyR5Msa3CoR4XFvMYE8VG1k.jpg",
                width: 150,
                height: 150,
              ),
            ),
            SizedBox(
              width: 150,
              height: 150,
              child: Image.network(
                "https://images.unsplash.com/photo-1454023492550-5696f8ff10e1?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D",
              ),
            ),
            SizedBox(
              width: 150,
              height: 150,
              child: Image.network(
                "https://images.unsplash.com/photo-1454023492550-5696f8ff10e1?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D",
              ),
            )
          ],
        ),
      ),
    );
  }
}
