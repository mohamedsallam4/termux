import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(82, 110, 177, 211),
          title: Text(
            "Example 1",
          ),
          foregroundColor: Colors.black,
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(82, 110, 177, 211),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.favorite,
                          size: 20,
                        ),
                        Row(
                          children: [Text("PERp")],
                        ),
                        Row(
                          children: [Text("25 min")],
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
