import 'package:flutter/material.dart';
import 'package:flutter_application_2/PageFour.dart';

class ImNotification extends StatelessWidget {
  const ImNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.black,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PageFour(),
                  ));
            },
          ),
          backgroundColor: const Color.fromARGB(215, 145, 141, 2),
          foregroundColor: Colors.black,
          title: const Text("Notification",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600)),
        ),
        body: Container(
          color: const Color.fromARGB(255, 242, 239, 209),
          alignment: Alignment.center,
          child: const SingleChildScrollView(
              child: Column(
            children: [
              TextField(decoration: InputDecoration()),
              TextField(decoration: InputDecoration()),
              TextField(decoration: InputDecoration()),
              TextField(decoration: InputDecoration()),
              TextField(decoration: InputDecoration()),
              TextField(decoration: InputDecoration()),
              TextField(decoration: InputDecoration()),
              TextField(decoration: InputDecoration()),
              TextField(decoration: InputDecoration()),
              TextField(decoration: InputDecoration()),
              TextField(decoration: InputDecoration()),
              TextField(decoration: InputDecoration()),
              TextField(decoration: InputDecoration()),
              TextField(decoration: InputDecoration()),
              TextField(decoration: InputDecoration()),
            ],
          )),
        ));
  }
}
