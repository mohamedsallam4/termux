import 'package:flutter/material.dart';

// ignore: camel_case_types
class Pageone extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables

  const Pageone({super.key});

  @override
  State<StatefulWidget> createState() => _PageoneState();
}

// ignore: camel_case_types
class _PageoneState extends State<Pageone> {
  @override
  void initState() {
    print("=============================Page One initialState");

    super.initState();
  }

  @override
  void dispose() {
    print("page one removed from your stack "); // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pageone"),
      ),
      body: ListView(
        children: [
          TextButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "Homepage", (route) => false);
              },
              child: Text(" Hello . GO TO HOME PAGE ")),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "Pagetwo");
              },
              child: Text(" Hello . GO TO PAGE TWO "))
        ],
      ),
    );
  }
}
