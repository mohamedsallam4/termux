import 'package:flutter/material.dart';

// ignore: camel_case_types
class product extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final data;
  const product({super.key, this.data});

  @override
  State<StatefulWidget> createState() => _productState();
}

// ignore: camel_case_types
class _productState extends State<product> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.grey, size: 35),
        title:
            const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(
            Icons.shopify_sharp,
            color: Colors.orange,
          ),
          Text(" Sela "),
          Text(
            "Shop",
            style: TextStyle(color: Colors.orange),
          )
        ]),
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
        elevation: 0,
        backgroundColor: Colors.grey[200],
      ),
      endDrawer: const Drawer(),
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 40,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          currentIndex: index,
          selectedItemColor: Colors.orange,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: " * ",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: " * "),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: " * ")
          ]),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Image.asset(widget.data["imagename"]),
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(widget.data["name"],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20)),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              alignment: Alignment.center,
              child: Text(
                widget.data["descreption"],
                style: const TextStyle(color: Colors.grey),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 25),
              alignment: Alignment.center,
              child: Text(
                widget.data["price"],
                style: const TextStyle(
                    color: Colors.orange, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Color :",
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.orange)),
                ),
                const Text("   Grey"),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                const Text("   Black")
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Size :",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "39",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: 17,
                ),
                Text(
                  "40",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 17,
                ),
                Text(
                  "41",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 17,
                ),
                Text(
                  "42",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 17,
                ),
                Text(
                  "43",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
              child: MaterialButton(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                color: Colors.black,
                textColor: Colors.white,
                onPressed: () {},
                child: const Text(
                  " Add to cart ",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
