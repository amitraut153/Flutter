import 'package:appbar_and_container/viii.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AppBar8(),
      debugShowCheckedModeBanner: false,
    );
  }
}
