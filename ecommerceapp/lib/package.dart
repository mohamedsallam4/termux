import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

// ignore: camel_case_types
class package extends StatefulWidget {
  const package({super.key});
  @override
  State<StatefulWidget> createState() => _packageState();
}

// ignore: camel_case_types
class _packageState extends State<package> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "PACKAGE",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(40, 10, 40, 10),
            child: MaterialButton(
              color: Colors.cyan,
              onPressed: () {
                AwesomeDialog(
                  context: context,
                  dialogType: DialogType.success,
                  animType: AnimType.rightSlide,
                  title: 'Warning',
                  desc: 'Are YOu Sure ?!',
                  btnCancelOnPress: () {},
                  btnOkOnPress: () {},
                )..show();
              },
              child: const Text("Show Dialog"),
            ),
          )
        ],
      ),
    );
  }
}

// ignore: camel_case_types
