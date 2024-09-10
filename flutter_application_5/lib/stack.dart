import 'package:flutter/material.dart';

class exam extends StatefulWidget {
  const exam({super.key});

  @override
  State<StatefulWidget> createState() => _examState();
}

class _examState extends State<exam> {
  int i = 0;
  bool status = false;
  String? country;
  String? age;
  bool trust = false;
  // ignore: non_constant_identifier_names
  bool Football = false;
  // ignore: non_constant_identifier_names
  bool Tennis = false;
  // ignore: non_constant_identifier_names
  bool Basketball = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(),
            body: SingleChildScrollView(
              child: Stack(alignment: Alignment.center, children: [
                Container(
                  width: 300,
                  height: 300,
                  color: const Color.fromARGB(255, 63, 20, 17),
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.green,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                )
              ]),
            )));
  }
}
