import 'package:flutter/material.dart';

// ignore: camel_case_types
class signUp extends StatefulWidget {
  const signUp({super.key});

  @override
  State<StatefulWidget> createState() => _signUpState();
}

// ignore: camel_case_types
class _signUpState extends State<signUp> {
  String? textval1;
  String? textval2;
  String? textval3;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              foregroundColor: const Color.fromARGB(255, 255, 254, 247),
              title: const Text("Sign Up", textAlign: TextAlign.center),
              backgroundColor: const Color.fromARGB(255, 100, 7, 1),
            ),
            body: Container(
              height: double.infinity,
              padding: const EdgeInsets.all(15),
              color: const Color.fromARGB(255, 255, 254, 247),
              child: SingleChildScrollView(
                child: Column(children: [
                  const SizedBox(
                    height: 140,
                  ),
                  TextField(
                    onChanged: (value) {
                      textval1 = value;
                      print(value);
                    },
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide:
                              BorderSide(color: Colors.black, width: 1)),

                      hintText: "Your Name",
                      //   border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 100, 7, 1))),

                      hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      label: Text("User Name",
                          style:
                              TextStyle(color: Color.fromARGB(255, 100, 7, 1))),
                      icon: Icon(Icons.person,
                          color: Color.fromARGB(255, 100, 7, 1)),
                      //prefix: Icon(Icons.person),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    onChanged: (value) {
                      textval2 = value;
                      //   print(value);
                    },
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide:
                              BorderSide(color: Colors.black, width: 1)),

                      hintText: "Your Email",
                      //   border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 100, 7, 1))),

                      hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      label: Text(" Email ",
                          style:
                              TextStyle(color: Color.fromARGB(255, 100, 7, 1))),
                      icon: Icon(Icons.email,
                          color: Color.fromARGB(255, 100, 7, 1)),
                      //prefix: Icon(Icons.person),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    obscureText: true,
                    onChanged: (value) {
                      textval3 = value;
                      //  print(value);
                    },
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide:
                              BorderSide(color: Colors.black, width: 1)),

                      hintText: "Password",
                      //border: OutlineInputBorder(),
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
                          print("Username is ");
                          print(textval1);
                          print("Email is ");
                          print(textval2);
                          print("Password is ");
                          print(textval3);
                        },
                        child: const Text(
                          "SIGN UP",
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
