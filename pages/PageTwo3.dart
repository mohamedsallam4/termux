import 'package:flutter/material.dart';
import 'package:flutter_application_2/Card.dart';
import 'package:flutter_application_2/HomeScreen3.dart';
import 'package:flutter_application_2/SearchApp.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<StatefulWidget> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 242, 239, 209),
        appBar: AppBar(
          // elevation: 40,
          //     title: Text("hello"),
          backgroundColor: const Color.fromARGB(215, 145, 141, 2),
          foregroundColor: Colors.black,
          // leading: Icon(Icons.store, size: 40, color: Colors.black, weight: 60),
          leading: const BackButton(),
          actions: [
            TextButton.icon(
                style: const ButtonStyle(
                    overlayColor: MaterialStatePropertyAll(
                        Color.fromARGB(155, 255, 255, 255))),
                onPressed: () {},
                icon:
                    const Icon(Icons.add_business_rounded, color: Colors.black),
                label: const Text(
                  "SHOPS",
                  style: TextStyle(color: Colors.black),
                )), //Icon(
            // Icons.vaccines,
            //color: Colors.black,
            //   size: 40,
            //   )
          ],
          leadingWidth: 60,
          //    shadowColor: Colors.yellow,
        ),
        body: Container(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        OutlinedButton(
                            style: const ButtonStyle(
                                overlayColor: MaterialStatePropertyAll(
                                    Color.fromARGB(215, 145, 141, 2))),
                            onPressed: () {},
                            child: const Icon(
                              Icons.cabin,
                              color: Colors.black,
                            )),
                        OutlinedButton.icon(
                            style: const ButtonStyle(
                                overlayColor: MaterialStatePropertyAll(
                                    Color.fromARGB(215, 145, 141, 2))),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HomeScreen()));
                            },
                            icon: const Icon(Icons.account_box_rounded,
                                color: Colors.black),
                            label: const Text(
                              "Profile",
                              style: TextStyle(color: Colors.black),
                            )),
                        OutlinedButton.icon(
                          style: const ButtonStyle(
                              overlayColor: MaterialStatePropertyAll(
                                  Color.fromARGB(215, 145, 141, 2))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const CardCheck()));
                          },
                          icon: const Icon(Icons.add_card_sharp,
                              color: Colors.black),
                          label: const Text(
                            "Add Card",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        OutlinedButton(
                          style: const ButtonStyle(
                              overlayColor: MaterialStatePropertyAll(
                                  Color.fromARGB(215, 145, 141, 2))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SearchApp()));
                          },
                          child: const Icon(Icons.search, color: Colors.black),
                        ),
                      ]),
                ),
                Container(
                  child: const Column(children: [
                    TextField(
                      cursorColor: Color.fromARGB(215, 145, 141, 2),
                      decoration: InputDecoration(
                        errorStyle: TextStyle(color: Colors.red),
                        icon: Icon(
                          Icons.account_box_rounded,
                          color: Colors.black,
                        ),
                        hintStyle: TextStyle(
                            color: Color.fromARGB(47, 0, 0, 0), fontSize: 15),
                        hintText: "Mo Sallam",
                        labelText: "User Name",
                        labelStyle:
                            TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    )
                  ]),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
            backgroundColor: const Color.fromARGB(215, 145, 141, 2),
            onPressed: () {},
            label: const Icon(
              Icons.add,
              color: Colors.black,
              size: 30,
            )));
  }
}
