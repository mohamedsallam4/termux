import 'package:flutter/material.dart';
import 'package:flutter_application_2/PageFour.dart';

class AirMode extends StatelessWidget {
  const AirMode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PageFour(),
                ));
          },
        ),
        backgroundColor: const Color.fromARGB(215, 145, 141, 2),
        title: const Text("Air Mode", style: TextStyle(color: Colors.black)),
      ),
      body: Stack(children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assests/photo/peakpx.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Color.fromARGB(59, 0, 0, 0), BlendMode.color))),
          child: SingleChildScrollView(
            child: Column(children: [
              const SizedBox(
                height: 10,
              ),
              // const Image(
              //     height: 200,
              //     width: 200,
              //     image: AssetImage("assests/photo/ghicxkhsfch.jpg")),

              const SizedBox(
                height: 30,
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.airplanemode_off_sharp,
                  color: Colors.black,
                ),
                label: const Text(
                  " Offline Mode ",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 22),
                ),
                style: const ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(60)))),
                    alignment: Alignment.centerLeft,
                    fixedSize: MaterialStatePropertyAll(
                      Size.fromHeight(55),
                    ),
                    backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(215, 145, 141, 2),
                    )),
              ),
              const SizedBox(
                height: 30,
              ),
            ]),
          ),
        )
      ]),
    );
  }
}
