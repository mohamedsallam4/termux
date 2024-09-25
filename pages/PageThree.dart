import 'package:flutter/material.dart';

class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  State<StatefulWidget> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(215, 145, 141, 2),
        foregroundColor: Colors.black,
        leading: const BackButton(
            color: Colors.black,
            style: ButtonStyle(
                overlayColor: MaterialStatePropertyAll(
                    Color.fromARGB(138, 255, 255, 255)))),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(alignment: Alignment.center, children: [
          Container(
            color: Colors.black,
            height: 530,
            width: 330,
          ),
          Container(
            margin: const EdgeInsets.all(30),
            color: const Color.fromARGB(215, 145, 141, 2),
            height: 450,
            width: 280,
            child: Column(children: [
              ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.black),
                ),
                child: const Icon(
                  Icons.add_a_photo,
                  color: Color.fromARGB(215, 145, 141, 2),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.black)),
                child: const Icon(
                  Icons.padding,
                  color: Color.fromARGB(215, 145, 141, 2),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.black)),
                child: const Icon(
                  Icons.sledding,
                  color: Color.fromARGB(215, 145, 141, 2),
                ),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
