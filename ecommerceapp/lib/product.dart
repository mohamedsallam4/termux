import 'package:flutter/material.dart';

// ignore: camel_case_types
class product extends StatefulWidget {
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
            child:
                ListView(children: [Image.asset(widget.data["imagename"])])));
  }
}
