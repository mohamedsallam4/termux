import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int i = 0;
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
                        i++;
                      });

                      print(i);
                    },
                    icon: const Icon(Icons.add))
              ],
            ),
            Row(
              children: [Text("Counter $i")],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        i--;
                      });

                      print(i);
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
