import 'package:ecommerceapp/product.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class ecommerce extends StatefulWidget {
  const ecommerce({super.key});

  @override
  State<StatefulWidget> createState() => _ecommerceState();
}

// ignore: camel_case_types
class _ecommerceState extends State<ecommerce> {
  int stander = 0;

  List categories = [
    {"icon": Icons.laptop, "lable": "Laptop"},
    {"icon": Icons.computer_sharp, "lable": "Computer"},
    {"icon": Icons.watch_rounded, "lable": "Watch"},
    {"icon": Icons.phone_android_rounded, "lable": "Mobile"},
    {"icon": Icons.tv, "lable": "TV"},
    {"icon": Icons.speaker, "lable": "Speaker"},
    {"icon": Icons.headphones, "lable": "Head Phone"},
    {"icon": Icons.tablet_mac, "lable": "Tablet"},
    {"icon": Icons.keyboard_alt_outlined, "lable": "Keyboard"},
    {"icon": Icons.mouse_outlined, "lable": "Mouse"}
  ];
  List bestselling = [
    {
      "imagename": "images/vzdv.jpg",
      "name": "Laptop",
      "descreption": "Descreption fine good ",
      "price": "350\$"
    },
    {
      "imagename": "images/dff.jpg",
      "name": " SmartWatch",
      "descreption": "is the best smart watch",
      "price": "450\$"
    },
    {
      "imagename": "images/dfsuhsdgf.jpeg",
      "name": "LG smart",
      "descreption": "is the best smarrt tv",
      "price": "650\$"
    },
    {
      "imagename": "images/fds.jpg",
      "name": "Ipad iphon3",
      "descreption": "is the best in games",
      "price": "850\$"
    },
    {
      "imagename": "images/thgh.jpg",
      "name": "Casio Watch",
      "descreption": "is the best watch",
      "price": "110\$"
    },
    {
      "imagename": "images/fdz.jpg",
      "name": "Samsung",
      "descreption": "is the best smarrt phone",
      "price": "1110\$"
    },
    {
      "imagename": "images/1280269.jpg",
      "name": "Oppo Reno 10",
      "descreption": "is the best smarrt phone",
      "price": "900\$"
    },
    {
      "imagename": "images/fhgbsd.jpg",
      "name": "Hawawi watch",
      "descreption": "is the best smarrt watch",
      "price": "820\$"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 40,
          onTap: (value) {
            setState(() {
              stander = value;
            });
          },
          currentIndex: stander,
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
            Row(
              children: [
                Expanded(
                    child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      hintText: "Search",
                      border: InputBorder.none,
                      fillColor: Colors.grey[200],
                      filled: true),
                )),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                  ),
                  child: Icon(
                    Icons.menu,
                    size: 40,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Categories",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(100)),
                          padding: const EdgeInsets.all(15),
                          child: Icon(
                            categories[index]["icon"],
                            size: 40,
                          )),
                      Text(
                        categories[index]["lable"],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800]),
                      )
                    ],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: const Text(
                "Best Selling",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            GridView.builder(
              itemCount: bestselling.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => product(
                            data: bestselling[index],
                          ),
                        ));
                  },
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          width: 300,
                          color: Colors.grey[200],
                          child: Image.asset(
                            bestselling[index]["imagename"],
                            fit: BoxFit.cover,
                            height: 100,
                          ),
                        ),
                        Text(bestselling[index]["name"],
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          bestselling[index]["descreption"],
                          style:
                              const TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          bestselling[index]["price"],
                          style: const TextStyle(
                              fontSize: 14,
                              color: Colors.orange,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                );
              },
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 230, crossAxisCount: 2),
            )
          ],
        ),
      ),
    );
  }
}
