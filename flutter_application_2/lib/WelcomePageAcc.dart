import 'package:flutter/material.dart';

class HomeScreenTwo extends StatefulWidget {
  const HomeScreenTwo({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenTwoState createState() => _HomeScreenTwoState();
}

int change = 0;

class _HomeScreenTwoState extends State<HomeScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: const Text(
          "الصفحه الرئيسيه",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 129, 117, 5),
      ),
      body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assests/photo/peakpx.jpg"),
                  fit: BoxFit.cover))),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 129, 117, 5),
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        currentIndex: change,
        selectedFontSize: 16,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        elevation: 100,
        // ignore: non_constant_identifier_names
        onTap: (Click) {
          setState(() {});
          change = Click;
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "حسابي",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "الصفحه الرئيسيه",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "الاشعارات ",
          ),
        ],
      ),
    );
  }
}
