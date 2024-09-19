import 'package:flutter/material.dart';
import 'package:flutter_application_5/shortcut.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return
        //   debugShowCheckedModeBanner: false,
        Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("mohamed"),
            Center(
              child: MaterialButton(
                color: const Color.fromARGB(255, 100, 7, 1),
                splashColor: Colors.black,
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //    builder: (context) => const shortcut(),
                  //
                  //));
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const shortcut(),
                      ));
                },
                child: const Text(
                  "LOG IN",
                  style: TextStyle(color: Color.fromARGB(255, 255, 254, 247)),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
