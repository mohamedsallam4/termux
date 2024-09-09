import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(82, 110, 177, 211),
          title: const Text(
            "Example 1",
          ),
          foregroundColor: Colors.black,
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(82, 110, 177, 211),
                  border: Border.all(
                    width: 2,
                    color: Colors.black,
                  )),
              alignment: Alignment.center,
              height: 30,
              width: 500,
              child: const Text("strawberry pavlova"),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(82, 110, 177, 211),
                  border: Border.all(
                    width: 2,
                    color: Colors.black,
                  )),
              alignment: Alignment.center,
              height: 100,
              width: 500,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              // color: const Color.fromARGB(82, 110, 177, 211),
              child: const Text(
                  "pavlova is a meringue based desert named after the russian ballerina anua pavlova pavlova features a crips crust and soft light inside lopped with fruit and whipped crearu"),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(82, 110, 177, 211),
                  border: Border.all(
                    width: 2,
                    color: Colors.black,
                  )),
              alignment: Alignment.center,
              height: 25,
              width: 500,
              // color: const Color.fromARGB(82, 110, 177, 211),
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      //Text("         "),
                      Icon(
                        Icons.star,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        size: 20,
                      )
                    ]),
                    //  Text("                           "),

                    Row(
                      children: [Text("120 review")],
                    )
                  ]),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(82, 110, 177, 211),
                  border: Border.all(
                    width: 2,
                    color: Colors.black,
                  )),
              alignment: Alignment.center,
              height: 80,
              width: 500,
              // color: const Color.fromARGB(82, 110, 177, 211),
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.favorite,
                          size: 20,
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 5)),
                        Row(
                          children: [Text("PERp")],
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 10)),
                        Row(
                          children: [Text("25 min")],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.timelapse,
                          size: 20,
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 5)),
                        Row(
                          children: [Text("cook")],
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 10)),
                        Row(
                          children: [Text("1 hr")],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.food_bank_outlined,
                          size: 20,
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 5)),
                        Row(
                          children: [Text("feeds")],
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 10)),
                        Row(
                          children: [Text("4-6")],
                        )
                      ],
                    )
                  ]),
            )
          ]),
        ),
      ),
    );
  }
}
