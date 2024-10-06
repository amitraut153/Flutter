import 'package:flutter/material.dart';

class AppBar1 extends StatelessWidget {
  const AppBar1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 206, 203, 203),
      appBar: AppBar(
        leading: (IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
          onPressed: () {},
        )),
        leadingWidth: 22,
        actions: [
          Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.link,
                    color: Colors.blue,
                  ),
                  onPressed: () {},
                ),
                // const Spacer(),
                const Text(
                  "Add Link",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ]),
        ],
        title: const Text(
          "AppBar and Container 1",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Colors.white70,
      ),
    );
  }
}
