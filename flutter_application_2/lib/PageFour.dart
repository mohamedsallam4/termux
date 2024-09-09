import 'package:flutter/material.dart';
import 'package:flutter_application_2/BestTools.dart';
import 'package:flutter_application_2/MetaSploit.dart';
import 'package:flutter_application_2/New_Bar.dart';
import 'package:flutter_application_2/News.dart';
import 'package:flutter_application_2/NgrokHelper.dart';
import 'package:flutter_application_2/Notification.dart';
import 'package:flutter_application_2/Projects.dart';
import 'package:flutter_application_2/SystemCommands.dart';
import 'package:flutter_application_2/TermuxInstall.dart';
import 'package:flutter_application_2/TermuxTools.dart';
import 'package:flutter_application_2/V7xTools.dart';
//import 'package:flutter_application_2/PersonalAcc1.dart';
import 'package:flutter_application_2/WelcomePage.dart';
import 'package:flutter_application_2/apps.dart';

class PageFour extends StatefulWidget {
  const PageFour({super.key});
  @override
  State<StatefulWidget> createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(215, 145, 141, 2),
        /*   leading: TextButton(
          //  onPressed: () {},
        ///    style: const ButtonStyle(
        //        overlayColor: MaterialStatePropertyAll(
         //           Color.fromARGB(56, 255, 255, 255))),
       //     child: const Icon(
       //       Icons.terminal,
       //       color: Colors.black,
        //      size: 45,
        //    ),
         ),*/

        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ImNotification(),
                    ));
              },
              child: const Icon(
                Icons.notification_important,
                size: 40,
                color: Colors.black,
              ))
        ],
        title: const Text(" TERMUX "),
        titleTextStyle: const TextStyle(
            color: Colors.black,
            fontSize: 27,
            fontWeight: FontWeight.w700,
            letterSpacing: 13),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assests/photo/peakpx.jpg"),
                fit: BoxFit.fitWidth)),
        child: Stack(alignment: Alignment.center, children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            //    color: Colors.black,
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          color: const Color.fromARGB(45, 237, 235, 125),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(children: [
                              OutlinedButton.icon(
                                style: const ButtonStyle(
                                    shape: MaterialStatePropertyAll(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8)))),
                                    fixedSize: MaterialStatePropertyAll(
                                      Size.fromHeight(55),
                                    ),
                                    overlayColor: MaterialStatePropertyAll(
                                        Color.fromARGB(33, 255, 255, 255)),
                                    backgroundColor: MaterialStatePropertyAll(
                                      Color.fromARGB(215, 145, 141, 2),
                                    )),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const V7xTools(),
                                      ));
                                },
                                icon: const Icon(
                                  Icons.mobile_friendly,
                                  size: 30,
                                  color: Colors.black,
                                ),
                                label: const Text(
                                  " V7X Tools ",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              OutlinedButton.icon(
                                style: const ButtonStyle(
                                    shape: MaterialStatePropertyAll(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8)))),
                                    fixedSize: MaterialStatePropertyAll(
                                      Size.fromHeight(55),
                                    ),
                                    overlayColor: MaterialStatePropertyAll(
                                        Color.fromARGB(33, 255, 255, 255)),
                                    backgroundColor: MaterialStatePropertyAll(
                                        Color.fromARGB(215, 145, 141, 2))),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const AllProjects(),
                                      ));
                                },
                                icon: const Icon(
                                  Icons.html,
                                  size: 30,
                                  color: Colors.black,
                                ),
                                label: const Text(
                                  " Projects ",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              OutlinedButton.icon(
                                style: const ButtonStyle(
                                    shape: MaterialStatePropertyAll(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8)))),
                                    fixedSize: MaterialStatePropertyAll(
                                      Size.fromHeight(55),
                                    ),
                                    overlayColor: MaterialStatePropertyAll(
                                        Color.fromARGB(33, 255, 255, 255)),
                                    backgroundColor: MaterialStatePropertyAll(
                                      Color.fromARGB(215, 145, 141, 2),
                                    )),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => NewsApp(),
                                      ));
                                },
                                icon: const Icon(Icons.update,
                                    size: 30, color: Colors.black),
                                label: const Text(
                                  " News ",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              OutlinedButton.icon(
                                style: const ButtonStyle(
                                    shape: MaterialStatePropertyAll(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8)))),
                                    fixedSize: MaterialStatePropertyAll(
                                      Size.fromHeight(55),
                                    ),
                                    overlayColor: MaterialStatePropertyAll(
                                        Color.fromARGB(33, 255, 255, 255)),
                                    backgroundColor: MaterialStatePropertyAll(
                                      Color.fromARGB(215, 145, 141, 2),
                                    )),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const AllApps(),
                                      ));
                                },
                                icon: const Icon(Icons.apps,
                                    size: 30, color: Colors.black),
                                label: const Text(
                                  "  Apps ",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {},
                            style: const ButtonStyle(
                                overlayColor: MaterialStatePropertyAll(
                                    Color.fromARGB(45, 255, 255, 255)),
                                alignment: Alignment.centerLeft),
                            child: const Icon(
                              Icons.arrow_circle_left_outlined,
                              color: Color.fromARGB(215, 145, 141, 2),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          TextButton(
                              onPressed: () {},
                              style: const ButtonStyle(
                                  overlayColor: MaterialStatePropertyAll(
                                      Color.fromARGB(45, 255, 255, 255)),
                                  alignment: Alignment.centerRight),
                              child: const Icon(
                                Icons.arrow_circle_right_outlined,
                                color: Color.fromARGB(215, 145, 141, 2),
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const TermuxInstall(),
                              ));
                        },
                        icon: const Icon(
                          Icons.code,
                          color: Colors.black,
                        ),
                        label: const Text(
                          " Termux Install ",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 22),
                        ),
                        style: const ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(60)))),
                            alignment: Alignment.centerLeft,
                            fixedSize: MaterialStatePropertyAll(
                              Size.fromHeight(55),
                            ),
                            backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(215, 145, 141, 2),
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SystemCommands(),
                              ));
                        },
                        icon: const Icon(
                          Icons.code,
                          color: Colors.black,
                        ),
                        label: const Text(
                          " System Commands ",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 22),
                        ),
                        style: const ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(60)))),
                            alignment: Alignment.centerLeft,
                            fixedSize: MaterialStatePropertyAll(
                              Size.fromHeight(55),
                            ),
                            backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(215, 145, 141, 2),
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const NgrokHelper(),
                              ));
                        },
                        icon: const Icon(
                          Icons.code,
                          color: Colors.black,
                        ),
                        label: const Text(
                          " Ngrok Helper ",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 22),
                        ),
                        style: const ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(60)))),
                            alignment: Alignment.centerLeft,
                            fixedSize: MaterialStatePropertyAll(
                              Size.fromHeight(55),
                            ),
                            backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(215, 145, 141, 2),
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MetaSploit(),
                              ));
                        },
                        icon: const Icon(
                          Icons.code,
                          color: Colors.black,
                        ),
                        label: const Text(
                          " MetaSploit V6 ",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 22),
                        ),
                        style: const ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(60)))),
                            alignment: Alignment.centerLeft,
                            fixedSize: MaterialStatePropertyAll(
                              Size.fromHeight(55),
                            ),
                            backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(215, 145, 141, 2),
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const TermuxTools(),
                              ));
                        },
                        icon: const Icon(
                          Icons.code,
                          color: Colors.black,
                        ),
                        label: const Text(
                          "Termux Tools ",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 22),
                        ),
                        style: const ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(60)))),
                            alignment: Alignment.centerLeft,
                            fixedSize: MaterialStatePropertyAll(
                              Size.fromHeight(55),
                            ),
                            backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(215, 145, 141, 2),
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const BestTools(),
                              ));
                        },
                        icon: const Icon(
                          Icons.code,
                          color: Colors.black,
                        ),
                        label: const Text(
                          " Best Tools ",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 22),
                        ),
                        style: const ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(60)))),
                            alignment: Alignment.centerLeft,
                            fixedSize: MaterialStatePropertyAll(
                              Size.fromHeight(55),
                            ),
                            backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(215, 145, 141, 2),
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ]),
              ),
            ),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const WelcomePage(),
              ));
        },
        backgroundColor: const Color.fromARGB(215, 145, 141, 2),
        foregroundColor: Colors.black,
        child: const Icon(
          Icons.keyboard_double_arrow_left_rounded,
          size: 30,
        ),
      ),
      drawer: const New_Bar(),
    );
  }
}
