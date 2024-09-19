import 'package:alastora/Alastora0000Acount.dart';
import 'package:alastora/Alastora0signin.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class astora extends StatefulWidget {
  const astora({super.key});

  @override
  State<StatefulWidget> createState() => _astoraState();
}

// ignore: camel_case_types
class _astoraState extends State<astora> {
  int index = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          currentIndex: index,
          backgroundColor: const Color.fromARGB(255, 100, 7, 1),
          selectedItemColor: const Color.fromARGB(255, 255, 254, 247),
          unselectedItemColor: Colors.black,
          selectedFontSize: 15,
          unselectedFontSize: 10,
          selectedLabelStyle:
              const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.access_time,
              ),
              label: " Time Matche ",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.table_rows), label: " Team Ranking "),
            BottomNavigationBarItem(
                icon: Icon(Icons.event), label: "Exclusive Event")
          ]),
      appBar: AppBar(
        elevation: double.infinity,
        backgroundColor: const Color.fromARGB(255, 100, 7, 1),
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 53, 4, 1),
        child: Container(
          padding: const EdgeInsets.all(15),
          child: ListView(
            children: [
              Column(
                children: [
                  SizedBox(
                      height: 60,
                      width: 60,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(70),
                          child: Image.asset("images/jjjj.jpg"))),
                  const ListTile(
                    title: Text("Mohamed Sallam ",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 254, 247),
                        )),
                    subtitle: Text(
                      "mohamedsallam20045@gmail.com",
                      style: TextStyle(
                        color: Color.fromARGB(200, 196, 195, 190),
                      ),
                    ),
                    titleTextStyle:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                title: const Text(" Account ",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(216, 148, 145, 145))),
                leading: const Icon(
                  Icons.account_box_outlined,
                  size: 30,
                  color: Color.fromARGB(216, 148, 145, 145),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Account(),
                      ));
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                title: const Text(" Order ",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(216, 148, 145, 145))),
                leading: const Icon(
                  Icons.offline_pin_rounded,
                  size: 30,
                  color: Color.fromARGB(216, 148, 145, 145),
                ),
                onTap: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                title: const Text(" Contact US ",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(216, 148, 145, 145))),
                leading: const Icon(
                  Icons.contacts_outlined,
                  size: 30,
                  color: Color.fromARGB(216, 148, 145, 145),
                ),
                onTap: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                title: const Text(" About US ",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(216, 148, 145, 145))),
                leading: const Icon(
                  Icons.contact_support_outlined,
                  size: 30,
                  color: Color.fromARGB(216, 148, 145, 145),
                ),
                onTap: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                title: const Text(" Setting ",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(216, 148, 145, 145))),
                leading: const Icon(
                  Icons.settings,
                  size: 30,
                  color: Color.fromARGB(216, 148, 145, 145),
                ),
                onTap: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                title: const Text(" Log Out ",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(216, 148, 145, 145))),
                leading: const Icon(
                  Icons.logout,
                  size: 30,
                  color: Color.fromARGB(216, 148, 145, 145),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const logIn(),
                      ));
                },
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            color: const Color.fromARGB(255, 255, 254, 247),
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                const SizedBox(
                  height: 18,
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.sports_baseball_rounded,
                    ),
                    style: const ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(300, 50)),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 100, 7, 1)),
                        iconColor: MaterialStatePropertyAll(Colors.black),
                        overlayColor: MaterialStatePropertyAll(Colors.black)),
                    label: const Text(
                      " Been Sports ",
                      style: TextStyle(
                        letterSpacing: 5,
                        color: Color.fromARGB(255, 255, 254, 247),
                      ),
                    )),
                const SizedBox(
                  height: 13,
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.sports_baseball_rounded,
                    ),
                    style: const ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(300, 50)),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 100, 7, 1)),
                        iconColor: MaterialStatePropertyAll(Colors.black),
                        overlayColor: MaterialStatePropertyAll(Colors.black)),
                    label: const Text(
                      " ON Time Sports ",
                      style: TextStyle(
                        letterSpacing: 5,
                        color: Color.fromARGB(255, 255, 254, 247),
                      ),
                    )),
                const SizedBox(
                  height: 13,
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.sports_baseball_rounded,
                    ),
                    style: const ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(300, 50)),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 100, 7, 1)),
                        iconColor: MaterialStatePropertyAll(Colors.black),
                        overlayColor: MaterialStatePropertyAll(Colors.black)),
                    label: const Text(
                      " AL Kaas Sports",
                      style: TextStyle(
                        letterSpacing: 5,
                        color: Color.fromARGB(255, 255, 254, 247),
                      ),
                    )),
                const SizedBox(
                  height: 13,
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.airplay_rounded,
                    ),
                    style: const ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(300, 50)),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 100, 7, 1)),
                        iconColor: MaterialStatePropertyAll(Colors.black),
                        overlayColor: MaterialStatePropertyAll(Colors.black)),
                    label: const Text(
                      " Al Jazera News ",
                      style: TextStyle(
                        letterSpacing: 5,
                        color: Color.fromARGB(255, 255, 254, 247),
                      ),
                    )),
                const SizedBox(
                  height: 13,
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.airplay_rounded,
                    ),
                    style: const ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(300, 50)),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 100, 7, 1)),
                        iconColor: MaterialStatePropertyAll(Colors.black),
                        overlayColor: MaterialStatePropertyAll(Colors.black)),
                    label: const Text(
                      " MBC ",
                      style: TextStyle(
                        letterSpacing: 5,
                        color: Color.fromARGB(255, 255, 254, 247),
                      ),
                    )),
                const SizedBox(
                  height: 13,
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.airplay_rounded,
                    ),
                    style: const ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(300, 50)),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 100, 7, 1)),
                        iconColor: MaterialStatePropertyAll(Colors.black),
                        overlayColor: MaterialStatePropertyAll(Colors.black)),
                    label: const Text(
                      " Alarabi News ",
                      style: TextStyle(
                        letterSpacing: 5,
                        color: Color.fromARGB(255, 255, 254, 247),
                      ),
                    )),
                const SizedBox(
                  height: 13,
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.airplay_rounded,
                    ),
                    style: const ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(300, 50)),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 100, 7, 1)),
                        iconColor: MaterialStatePropertyAll(Colors.black),
                        overlayColor: MaterialStatePropertyAll(Colors.black)),
                    label: const Text(
                      " Al arabiya News ",
                      style: TextStyle(
                        letterSpacing: 5,
                        color: Color.fromARGB(255, 255, 254, 247),
                      ),
                    )),
                const SizedBox(
                  height: 13,
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.airplay_rounded,
                    ),
                    style: const ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(300, 50)),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 100, 7, 1)),
                        iconColor: MaterialStatePropertyAll(Colors.black),
                        overlayColor: MaterialStatePropertyAll(Colors.black)),
                    label: const Text(
                      "Al Qahera Mobasher",
                      style: TextStyle(
                        letterSpacing: 5,
                        color: Color.fromARGB(255, 255, 254, 247),
                      ),
                    )),
                const SizedBox(
                  height: 13,
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.airplay_rounded,
                    ),
                    style: const ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(300, 50)),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 100, 7, 1)),
                        iconColor: MaterialStatePropertyAll(Colors.black),
                        overlayColor: MaterialStatePropertyAll(Colors.black)),
                    label: const Text(
                      " Alhayah ",
                      style: TextStyle(
                        letterSpacing: 5,
                        color: Color.fromARGB(255, 255, 254, 247),
                      ),
                    )),
                const SizedBox(
                  height: 13,
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.airplay_rounded,
                    ),
                    style: const ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(300, 50)),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 100, 7, 1)),
                        iconColor: MaterialStatePropertyAll(Colors.black),
                        overlayColor: MaterialStatePropertyAll(Colors.black)),
                    label: const Text(
                      " ART ",
                      style: TextStyle(
                        letterSpacing: 5,
                        color: Color.fromARGB(255, 255, 254, 247),
                      ),
                    )),
                const SizedBox(
                  height: 13,
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.airplay_rounded,
                    ),
                    style: const ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(300, 50)),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 100, 7, 1)),
                        iconColor: MaterialStatePropertyAll(Colors.black),
                        overlayColor: MaterialStatePropertyAll(Colors.black)),
                    label: const Text(
                      " Shaheed ",
                      style: TextStyle(
                        letterSpacing: 5,
                        color: Color.fromARGB(255, 255, 254, 247),
                      ),
                    )),
                const SizedBox(
                  height: 13,
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.airplay_rounded,
                    ),
                    style: const ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(300, 50)),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 100, 7, 1)),
                        iconColor: MaterialStatePropertyAll(Colors.black),
                        overlayColor: MaterialStatePropertyAll(Colors.black)),
                    label: const Text(
                      "Alnhar",
                      style: TextStyle(
                        letterSpacing: 5,
                        color: Color.fromARGB(255, 255, 254, 247),
                      ),
                    )),
                const SizedBox(
                  height: 13,
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.airplay_rounded,
                    ),
                    style: const ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(300, 50)),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 100, 7, 1)),
                        iconColor: MaterialStatePropertyAll(Colors.black),
                        overlayColor: MaterialStatePropertyAll(Colors.black)),
                    label: const Text(
                      "Elmehwar",
                      style: TextStyle(
                        letterSpacing: 5,
                        color: Color.fromARGB(255, 255, 254, 247),
                      ),
                    )),
                const SizedBox(
                  height: 13,
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.airplay_rounded,
                    ),
                    style: const ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(300, 50)),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 100, 7, 1)),
                        iconColor: MaterialStatePropertyAll(Colors.black),
                        overlayColor: MaterialStatePropertyAll(Colors.black)),
                    label: const Text(
                      " ON ",
                      style: TextStyle(
                        letterSpacing: 5,
                        color: Color.fromARGB(255, 255, 254, 247),
                      ),
                    )),
                const SizedBox(
                  height: 13,
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.airplay_rounded,
                    ),
                    style: const ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(300, 50)),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 100, 7, 1)),
                        iconColor: MaterialStatePropertyAll(Colors.black),
                        overlayColor: MaterialStatePropertyAll(Colors.black)),
                    label: const Text(
                      " Nile ",
                      style: TextStyle(
                        letterSpacing: 5,
                        color: Color.fromARGB(255, 255, 254, 247),
                      ),
                    )),
                const SizedBox(
                  height: 13,
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.airplay_rounded,
                    ),
                    style: const ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(300, 50)),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 100, 7, 1)),
                        iconColor: MaterialStatePropertyAll(Colors.black),
                        overlayColor: MaterialStatePropertyAll(Colors.black)),
                    label: const Text(
                      " Extra News ",
                      style: TextStyle(
                        letterSpacing: 5,
                        color: Color.fromARGB(255, 255, 254, 247),
                      ),
                    )),
                const SizedBox(
                  height: 13,
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.airplay_rounded,
                    ),
                    style: const ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(300, 50)),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 100, 7, 1)),
                        iconColor: MaterialStatePropertyAll(Colors.black),
                        overlayColor: MaterialStatePropertyAll(Colors.black)),
                    label: const Text(
                      " Rotana ",
                      style: TextStyle(
                        letterSpacing: 5,
                        color: Color.fromARGB(255, 255, 254, 247),
                      ),
                    )),
                const SizedBox(
                  height: 13,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
