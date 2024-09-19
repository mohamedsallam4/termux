import 'package:flutter/material.dart';

// ignore: camel_case_types
class snackbar extends StatefulWidget {
  const snackbar({super.key});

  @override
  State<StatefulWidget> createState() => _snackbarState();
}

// ignore: camel_case_types
class _snackbarState extends State<snackbar> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> snack = GlobalKey();

    return Scaffold(
      key: snack,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
      ),
      body: Container(
          color: const Color.fromARGB(255, 250, 248, 233),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: MaterialButton(
                    color: Colors.cyan,
                    onPressed: () {
                      snack.currentState!
                          .showBottomSheet((context) => Container(
                                padding: const EdgeInsets.all(10),
                                height: 150,
                                width: 1000,
                                color: Colors.cyan,
                                child: const Column(
                                  children: [
                                    Text(" Choose your image",
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w700)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("From Gallary",
                                        style: TextStyle(fontSize: 16)),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text("From Camira",
                                        style: TextStyle(fontSize: 16))
                                  ],
                                ),
                              ));
                    },
                    child: const Text(
                      "press to show bottom sheet",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    )),
              ),
              MaterialButton(
                  color: Colors.cyan,
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: const Text("تم النسخ بنجاح. شكرا لك "),
                      duration: const Duration(seconds: 3),
                      action: SnackBarAction(
                          label: " OK ",
                          onPressed: () {
                            print("Ok Snack Bar");
                          }),
                    ));
                  },
                  child: const Text(
                    "press to show snakkey",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  )),
            ],
          )),
    );
  }
}
