import 'package:flutter/material.dart';
import 'package:flutter_application_2/PageTwo3.dart';
import 'package:flutter_application_2/PersonalAcc1.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  data() {
    print("helllllllllllo ");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //   backgroundColor: Colors.green,
        appBar: AppBar(
          title: const Text("Mo Sallam App "),
          leading: BackButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PageTwo()));
            },
            color: Colors.black,
            style: const ButtonStyle(
                overlayColor: MaterialStatePropertyAll(
                    Color.fromARGB(141, 255, 255, 255))),
          ),
          //leadingWidth: 60,
          backgroundColor: const Color.fromARGB(212, 161, 156, 2),
          foregroundColor: const Color.fromARGB(214, 0, 0, 0),
          actions: [
            TextButton(
                style: const ButtonStyle(
                    overlayColor: MaterialStatePropertyAll(
                        Color.fromARGB(215, 145, 141, 2))),
                onPressed: () {},
                child: const Icon(
                  Icons.share,
                  color: Colors.black,
                  size: 30,
                )),
            OutlinedButton(
                style: const ButtonStyle(
                    iconSize: MaterialStatePropertyAll(30),
                    overlayColor: MaterialStatePropertyAll(
                        Color.fromARGB(215, 145, 141, 2))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PersonalAcc()));
                },
                child: const Icon(
                  Icons.exit_to_app,
                  color: Colors.black,
                ))
          ],
        ),
        body: Container(
          //height: 400,
          //width: 600,
          color: const Color.fromARGB(255, 242, 239, 209),
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //        ElevatedButton(
                  //   onPressed: null, child: Text("click on button"))
                  //  Text("             "),
                  //    Text("FaceBook",
                  //       style: TextStyle(
                  //          letterSpacing: 2,
                  //         fontSize: 20,
                  //        fontWeight: FontWeight.w600)),
                  // Text("helllo moooo ")
                  OutlinedButton.icon(
                      style: const ButtonStyle(
                          overlayColor: MaterialStatePropertyAll(
                              Color.fromARGB(215, 145, 141, 2))),
                      //  style: ButtonStyle(
                      //   backgroundColor:
                      //   MaterialStateProperty.all(Colors.white)),
                      //....
                      // style: const ButtonStyle(
                      //       foregroundColor:
                      //             MaterialStatePropertyAll(Colors.black)),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.facebook,
                        color: Color.fromARGB(255, 12, 110, 191),
                        size: 40,
                      ),
                      label: const Text("FaceBook ",
                          style: TextStyle(color: Colors.black, fontSize: 18)))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //    const Text("              "),
                  //     const Text("Telegram ",
                  //     style: TextStyle(
                  //           letterSpacing: 2,
                  //         fontSize: 20,
                  //         fontWeight: FontWeight.w600)),
                  OutlinedButton.icon(
                      style: const ButtonStyle(
                          overlayColor: MaterialStatePropertyAll(
                              Color.fromARGB(215, 145, 141, 2))),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.telegram,
                        size: 40,
                        color: Colors.lightBlue,
                      ),
                      label: const Text("telegram",
                          style: TextStyle(color: Colors.black, fontSize: 18)))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //    Text("        "),
                  //  Text(
                  //    "   Tiktok     ",
                  //   style: TextStyle(
                  //       fontWeight: FontWeight.w600,
                  //       fontSize: 20,
                  //      letterSpacing: 2),
                  //    ),
                  OutlinedButton.icon(
                      style: const ButtonStyle(
                          overlayColor: MaterialStatePropertyAll(
                              Color.fromARGB(215, 145, 141, 2))),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.tiktok,
                        size: 40,
                        color: Colors.black,
                      ),
                      label: const Text(
                        "Tiktok",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Text("               "),
                  // Text("Radio     ",
                  //  style: TextStyle(
                  //     fontSize: 20,
                  //    fontWeight: FontWeight.w600,
                  //    letterSpacing: 2)),
                  OutlinedButton.icon(
                      style: const ButtonStyle(
                          overlayColor: MaterialStatePropertyAll(
                              Color.fromARGB(215, 145, 141, 2))),
                      onPressed: () {},
                      icon: const Icon(Icons.radio, color: Colors.red),
                      label: const Text("Radio ",
                          style: TextStyle(color: Colors.black, fontSize: 18)))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton.icon(
                      style: const ButtonStyle(
                          overlayColor: MaterialStatePropertyAll(
                              Color.fromARGB(215, 145, 141, 2))),
                      onPressed: () {
                        // print("hello flutter ");
                        data();
                      },
                      icon: const Icon(Icons.add_a_photo,
                          size: 35, color: Color.fromARGB(255, 0, 0, 0)),
                      label: const Text(
                        "Upload Picture",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ))
                ],
              ),
              //     const Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //   Text("ur face "),
              //    TextButton(
              //       style: ButtonStyle(
              //         foregroundColor:
              //            MaterialStatePropertyAll(Colors.lightBlue)),
              //       onPressed: null,
              //        child: Icon(Icons.face))
              //        ],
              //   )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            data();
          },
          label: const Text(" ADD "),
          icon: const Icon(
            Icons.add,
            size: 30,
            color: Color.fromARGB(215, 145, 141, 2),
          ),
          backgroundColor: Colors.black,
          splashColor: const Color.fromARGB(215, 145, 141, 2),
        ),

        // floatingActionButtonLocation: FloatingActionButtonLocation.endContained,

        //FloatingActionButton(
        //child: const Icon(
        //Icons.add,
        //size: 40,
        //color: Color.fromARGB(255, 231, 221, 126),
        //),
        //onPressed: () {
        //data();
        //},
        //splashColor: Colors.yellow,
        //backgroundColor: Colors.black,
        //),
      ),
    );
  }
}
