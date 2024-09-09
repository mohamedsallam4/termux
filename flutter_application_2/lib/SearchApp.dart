import 'package:flutter/material.dart';

class SearchApp extends StatefulWidget {
  const SearchApp({super.key});
  @override
  State<StatefulWidget> createState() => _SearchAppState();
}

class _SearchAppState extends State<SearchApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(215, 145, 141, 2),
        leading: const BackButton(
          color: Colors.black,
          style: ButtonStyle(
              overlayColor:
                  MaterialStatePropertyAll(Color.fromARGB(149, 255, 255, 255))),
        ),
      ),
      body: Container(
          color: const Color.fromARGB(255, 242, 239, 209),
          child: Column(
            children: [
              Column(children: [
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  cursorColor: const Color.fromARGB(215, 145, 141, 2),
                  decoration: InputDecoration(
                      icon: TextButton(
                          onPressed: () {},
                          child: const Icon(
                            Icons.search,
                            size: 35,
                            color: Color.fromARGB(215, 145, 141, 2),
                          )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(),
                          gapPadding: 0.4),
                      hintText: " Search "),
                )
              ])
            ],
          )),
    );
  }
}
