import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<StatefulWidget> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  List images = ["images/jjjj.jpg", "images/shdh.jpg", "images/fhdjufd.jpg"];

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: const Color.fromARGB(255, 255, 254, 247),
        title: const Text(
          "Account",
          textAlign: TextAlign.center,
        ),
        backgroundColor: const Color.fromARGB(255, 100, 7, 1),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromARGB(255, 255, 254, 247),
        child: Column(children: [
          SizedBox(
            height: 170,
            width: 170,
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: SizedBox(
                height: 250,
                child: PageView.builder(
                  itemCount: images.length,
                  itemBuilder: (context, index) => ClipRRect(
                    borderRadius: BorderRadius.circular(460),
                    child: Image.asset(
                      images[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Mohamed Sallam",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                    width: 2, color: const Color.fromARGB(255, 100, 7, 1)),
              ),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "المتابعون",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text("  18  ")],
                  )
                ],
              )),
          const SizedBox(
            height: 10,
          ),
          Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                    width: 2, color: const Color.fromARGB(255, 100, 7, 1)),
              ),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "الإشتراكات",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text("  3  ")],
                  )
                ],
              )),
          const SizedBox(
            height: 10,
          ),
          Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                    width: 2, color: const Color.fromARGB(255, 100, 7, 1)),
              ),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "القنوات",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text("  868  ")],
                  )
                ],
              )),
        ]),
      ),
    );
  }
}
