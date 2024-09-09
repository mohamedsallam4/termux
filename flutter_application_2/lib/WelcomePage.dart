import 'package:flutter/material.dart';
import 'package:flutter_application_2/PageFour.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<StatefulWidget> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*  appBar: AppBar(
        title: const Text(" WELCOME ",
            style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                letterSpacing: 20,
                fontWeight: FontWeight.w600)),
        backgroundColor: const Color.fromARGB(215, 145, 141, 2),
      ),*/
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assests/photo/peakpx.jpg"),
                    fit: BoxFit.cover)),
            child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 130,
                  ),
                  Text(" مرحبا بكم في عالمنا ",
                      style: TextStyle(
                          fontFamily: "lo",
                          color: Color.fromARGB(255, 122, 110, 3),
                          fontSize: 35,
                          fontWeight: FontWeight.w600)),
                ]),
          ),
          Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 325),
                FloatingActionButton(
                  tooltip: " Next Screen ",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PageFour()));
                  },
                  backgroundColor: const Color.fromARGB(255, 122, 110, 3),
                  splashColor: const Color.fromARGB(136, 236, 228, 161),
                  foregroundColor: const Color.fromARGB(173, 0, 0, 0),
                  child: const Icon(
                    Icons.keyboard_double_arrow_right,
                    size: 50,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
