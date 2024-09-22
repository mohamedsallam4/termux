import 'package:flutter/material.dart';

// ignore: camel_case_types
class homepage extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables

  const homepage({super.key});

  @override
  State<StatefulWidget> createState() => _homepageState();
}

// ignore: camel_case_types
class _homepageState extends State<homepage> {
  @override
  void initState() {
    print("=================Home Page initialState");

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    print("home page removed from your stack ");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("initial state"),
      ),
      body: ListView(
        children: [
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "Pageone");
              },
              child: Text(" Hello . GO TO PAGE ONE ")),
          SizedBox(
            height: 10,
          ),
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
