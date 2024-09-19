import 'package:alastora/Alastoraprog.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class logIn extends StatefulWidget {
  const logIn({super.key});

  @override
  State<StatefulWidget> createState() => _logInState();
}

// ignore: camel_case_types
class _logInState extends State<logIn> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              foregroundColor: const Color.fromARGB(255, 255, 254, 247),
              title: const Text(
                "Log In",
                textAlign: TextAlign.center,
              ),
              backgroundColor: const Color.fromARGB(255, 100, 7, 1),
            ),
            body: Container(
              padding: const EdgeInsets.all(15),
              color: const Color.fromARGB(255, 255, 254, 247),
              height: double.infinity,
              child: SingleChildScrollView(
                child: Column(children: [
                  const SizedBox(
                    height: 165,
                  ),
                  TextField(
                    controller: username,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid)),
                      hintText: "Your Name",
                      //   border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Color.fromARGB(255, 100, 7, 1),
                      )),

                      hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      label: Text("User Name",
                          style: TextStyle(
                            color: Color.fromARGB(255, 100, 7, 1),
                          )),
                      icon: Icon(
                        Icons.person,
                        color: Color.fromARGB(255, 100, 7, 1),
                      ),
                      //prefix: Icon(Icons.person),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    obscureText: true,
                    controller: password,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid)),
                      hintText: "Password",
                      //   border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 100, 7, 1))),

                      hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      label: Text(" Password ",
                          style:
                              TextStyle(color: Color.fromARGB(255, 100, 7, 1))),
                      icon: Icon(Icons.password,
                          color: Color.fromARGB(255, 100, 7, 1)),
                      //prefix: Icon(Icons.person),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      MaterialButton(
                        color: const Color.fromARGB(255, 100, 7, 1),
                        splashColor: Colors.black,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const astora(),
                              ));

                          print("Username is ");
                          print(username.text);
                          print("Password is ");
                          print(password.text);
                        },
                        child: const Text(
                          "LOG IN",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 254, 247)),
                        ),
                      )
                    ],
                  )
                ]),
              ),
            )));
  }
}
