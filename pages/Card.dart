import 'package:flutter/material.dart';

class CardCheck extends StatefulWidget {
  const CardCheck({super.key});

  @override
  State<StatefulWidget> createState() => _CardCheckState();
}

class _CardCheckState extends State<CardCheck> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(215, 145, 141, 2),
        leading: const BackButton(
            color: Colors.black,
            style: ButtonStyle(
                overlayColor: MaterialStatePropertyAll(
                    Color.fromARGB(155, 244, 242, 244)))),
        actions: [
          TextButton(
            onPressed: () {},
            style: const ButtonStyle(
                overlayColor: MaterialStatePropertyAll(
                    Color.fromARGB(61, 255, 255, 255))),
            child: const Icon(
              Icons.new_releases_outlined,
              color: Colors.black,
            ),
          )
        ],
        title: const Text(
          " Card ",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 242, 239, 209),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(15),
              child: const Column(children: [
                TextField(
                  cursorColor: Color.fromARGB(215, 145, 141, 2),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        borderSide:
                            BorderSide(color: Color.fromARGB(215, 145, 141, 2)),
                        gapPadding: 4.0),
                    labelText: "Visa Card",
                    hintText: " Number Of Your Visa ",
                    labelStyle:
                        TextStyle(color: Color.fromARGB(215, 145, 141, 2)),
                    icon: Icon(
                      Icons.add_card_rounded,
                      color: Color.fromARGB(215, 145, 141, 2),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ]),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              child: const Column(children: [
                TextField(
                  obscureText: true,
                  cursorColor: Color.fromARGB(215, 145, 141, 2),
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.password,
                        color: Color.fromARGB(215, 145, 141, 2),
                      ),
                      labelText: " Password ",
                      hintText: " Password ",
                      labelStyle:
                          TextStyle(color: Color.fromARGB(215, 145, 141, 2)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide(),
                          gapPadding: 0.4)),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
