import 'package:flutter/material.dart';

// ignore: camel_case_types
class Pagevieww extends StatefulWidget {
  const Pagevieww({super.key});

  @override
  State<StatefulWidget> createState() => _PageviewwState();
}

// ignore: camel_case_types
class _PageviewwState extends State<Pagevieww> {
  List imagesname = [
    "images/fhdjufd.jpg",
    "images/jjjj.jpg",
    "images/shdh.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          SizedBox(
              height: 300,
              child: PageView.builder(
                itemCount: imagesname.length,
                itemBuilder: (context, i) {
                  return Image.asset(
                    imagesname[i],
                    fit: BoxFit.cover,
                  );
                },
              )
              // PageView(
              //   onPageChanged: (value) {
              //     print(value);
              //   },
              //   children: [
              //     Image.asset("images/fhdjufd.jpg", fit: BoxFit.cover),
              //     Image.asset(
              //       "images/jjjj.jpg",
              //       fit: BoxFit.cover,
              //     ),
              //     Image.asset(
              //       "images/fhdjufd.jpg",
              //       fit: BoxFit.cover,
              //     ),
              //     Image.asset(
              //       "images/jjjj.jpg",
              //       fit: BoxFit.cover,
              //     ),
              //   ],
              // )

              )
        ]),
      ),
    );
  }
}
