import 'package:flutter/material.dart';

// ignore: camel_case_types
class seco extends StatefulWidget {
  const seco({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<seco> {
  bool status = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        status = true;
                      });
                    },
                    icon: const Icon(Icons.add))
              ],
            ),
            Row(
              children: [
                Text("   "),
                status ? Icon(Icons.star) : Icon(Icons.star_border)
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        status = false;
                      });
                    },
                    icon: const Icon(Icons.minimize))
              ],
            )
          ],
        ),
      ),
    );
  }
}
