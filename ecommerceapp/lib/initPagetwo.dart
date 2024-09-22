import 'package:flutter/material.dart';

// ignore: camel_case_types
class Pagetwo extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables

  const Pagetwo({super.key});

  @override
  State<StatefulWidget> createState() => _PagetwoState();
}

// ignore: camel_case_types
class _PagetwoState extends State<Pagetwo> {
  @override
  void initState() {
    print("===================Page Two initialState");

    super.initState();
  }

  @override
  void dispose() {
    print("page two removed from your stack "); // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagetwo"),
      ),
      body: ListView(
        children: [
          TextButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  "Homepage",
                  (route) => false,
                );
              },
              child: Text(" Hello . GO TO Home PAGE  ")),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "Pageone");
              },
              child: Text(" Hello . GO TO PAGE ONE ")),
        ],
      ),
    );
  }
}
