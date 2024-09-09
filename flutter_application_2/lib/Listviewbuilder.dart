import 'package:flutter/material.dart';

class StaTe extends StatelessWidget {
  const StaTe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Programs",
        ),
        foregroundColor: Colors.black,
        backgroundColor: const Color.fromARGB(255, 126, 114, 4),
        leading: const BackButton(color: Colors.black),
      ),
      body: Container(
        color: const Color.fromARGB(55, 87, 78, 2),
        child: ListView.builder(
          padding: const EdgeInsets.all(10.0),
          itemCount: 5,
          itemBuilder: (context, int index) {
            return Column(
              children: [
                ListTile(
                  // textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 4,
                      ),
                      borderRadius: BorderRadius.circular(30)),
                  splashColor: const Color.fromARGB(29, 0, 0, 0),
                  tileColor: const Color.fromARGB(48, 157, 145, 33),
                  // onTap: () {
                  //   {}
                  // },
                  iconColor: Colors.black,
                  leading: const Icon(Icons.perm_identity_rounded),
                  trailing: const Icon(Icons.perm_identity_rounded),
                  title: Text("Program $index",
                      style: const TextStyle(
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center),
                ),
                ElevatedButton(
                    style: const ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(260, 60)),
                        padding: MaterialStatePropertyAll(
                          EdgeInsets.all(18),
                        ),
                        backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 126, 114, 4),
                        )),
                    onPressed: () {},
                    child: const Text(
                      " شرح طريقة التثبيت ",
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            );
          },
        ),
      ),
    );
  }
}
