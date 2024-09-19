import 'package:flutter/material.dart';

// ignore: camel_case_types
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<StatefulWidget> createState() => _loginState();
}

// ignore: camel_case_types
class _loginState extends State<login> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              foregroundColor: const Color.fromARGB(255, 32, 77, 34),
              title: const Text("Log in"),
              backgroundColor: const Color.fromARGB(36, 0, 0, 0),
            ),
            body: SingleChildScrollView(
              child: Column(children: [
                const SizedBox(
                  height: 200,
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
                        print(username.text);
                        print("Password is ");
                        print(password.text);
                      },
                      child: const Text(
                        "LOG IN",
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
