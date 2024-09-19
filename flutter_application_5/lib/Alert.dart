import 'package:flutter/material.dart';

class showdialog extends StatefulWidget {
  const showdialog({super.key});

  @override
  State<StatefulWidget> createState() => _showdialogState();
}

// ignore: camel_case_types
class _showdialogState extends State<showdialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Center(
            child: MaterialButton(
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      // titlePadding: EdgeInsets.all(10),
                      contentPadding: const EdgeInsets.all(20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      title: const Text("Warnning Alert"),
                      content: const Text("Are you sure ?"),
                      actions: [
                        TextButton(
                            onPressed: () {
                              print("OK");
                            },
                            child: const Text("OK")),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("Cancle"))
                      ],
                    );
                  },
                );
              },
              color: Colors.cyan,
              splashColor: Colors.black,
              child: const Text("ALERT"),
            ),
          )
        ],
      ),
    );
  }
}
