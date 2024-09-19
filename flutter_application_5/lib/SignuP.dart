import 'package:flutter/material.dart';

// ignore: camel_case_types
class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<StatefulWidget> createState() => _signupState();
}

// ignore: camel_case_types
class _signupState extends State<signup> {
  String? textval1;
  String? textval2;
  String? textval3;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              foregroundColor: const Color.fromARGB(255, 32, 77, 34),
              title: const Text("Sign Up"),
              backgroundColor: const Color.fromARGB(36, 0, 0, 0),
            ),
            body: SingleChildScrollView(
              child: Column(children: [
                const SizedBox(
                  height: 150,
                ),
                TextField(
                  onChanged: (value) {
                    textval1 = value;
                    print(value);
                  },
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        borderSide: BorderSide(color: Colors.black, width: 1)),

                    hintText: "Your Name",
                    //   border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 32, 77, 34))),

                    hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    label: Text("User Name",
                        style:
                            TextStyle(color: Color.fromARGB(255, 32, 77, 34))),
                    icon: Icon(Icons.person,
                        color: Color.fromARGB(255, 32, 77, 34)),
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
                        borderSide: BorderSide(color: Colors.black, width: 1)),

                    hintText: "Your Email",
                    //   border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 32, 77, 34))),

                    hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    label: Text(" Email ",
                        style:
                            TextStyle(color: Color.fromARGB(255, 32, 77, 34))),
                    icon: Icon(Icons.email,
                        color: Color.fromARGB(255, 32, 77, 34)),
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
                        borderSide: BorderSide(color: Colors.black, width: 1)),

                    hintText: "Password",
                    //border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 32, 77, 34))),

                    hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    label: Text(" Password ",
                        style:
                            TextStyle(color: Color.fromARGB(255, 32, 77, 34))),
                    icon: Icon(Icons.password,
                        color: Color.fromARGB(255, 32, 77, 34)),
                    //prefix: Icon(Icons.person),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    MaterialButton(
                      color: const Color.fromARGB(36, 0, 0, 0),
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
                        style:
                            TextStyle(color: Color.fromARGB(255, 32, 77, 34)),
                      ),
                    )
                  ],
                )
              ]),
            )));
  }
}
