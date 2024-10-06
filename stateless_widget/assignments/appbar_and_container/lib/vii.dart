import 'package:flutter/material.dart';

class AppBar7 extends StatelessWidget {
  const AppBar7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "AppBar and Contaier 6",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SizedBox(
                width: 150,
                height: 300,
                child: Image.network(
                  "https://i.etsystatic.com/41725820/r/il/fc501a/5713598629/il_570xN.5713598629_1upn.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 150,
                height: 300,
                child: Image.network(
                  "https://i.pinimg.com/736x/19/ee/4a/19ee4a3da8572531a7af9bd35900fef4.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 150,
                height: 300,
                child: Image.network(
                  "https://t3.ftcdn.net/jpg/07/55/04/66/360_F_755046639_OD1ZSspQAoYALyYAIoD9ksWyNFMkCu4s.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 150,
                height: 300,
                child: Image.network(
                  "https://i.pinimg.com/736x/19/ee/4a/19ee4a3da8572531a7af9bd35900fef4.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 150,
                height: 300,
                child: Image.network(
                  "https://i.pinimg.com/736x/19/ee/4a/19ee4a3da8572531a7af9bd35900fef4.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
