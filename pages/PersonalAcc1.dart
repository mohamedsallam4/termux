import 'package:flutter/material.dart';
import 'package:flutter_application_2/Login2.dart';

class PersonalAcc extends StatefulWidget {
  const PersonalAcc({super.key});

  @override
  State<StatefulWidget> createState() => _PersonalAccState();
}

class _PersonalAccState extends State<PersonalAcc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(215, 145, 141, 2),
          foregroundColor: Colors.black,
          title: const Text("Account"),
          leading: const BackButton(),
          actions: [
            TextButton(
                style: const ButtonStyle(
                    overlayColor: MaterialStatePropertyAll(
                        Color.fromARGB(58, 223, 212, 84))),
                onPressed: () {},
                child: const Icon(
                  Icons.settings,
                  color: Colors.black,
                ))
          ],
        ),
        body: Container(
          color: const Color.fromARGB(255, 242, 239, 209),
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(15),
                  alignment: Alignment.center,
                  child: const Column(
                    children: [
                      TextField(
                          cursorColor: Color.fromARGB(215, 145, 141, 2),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                borderSide: BorderSide(
                                    color: Color.fromARGB(215, 145, 141, 2)),
                                gapPadding: 4.0),
                            icon: Icon(
                              Icons.person,
                              color: Color.fromARGB(215, 145, 141, 2),
                            ),
                            hintText: "User Name",
                            labelText: "User Name",
                            labelStyle: TextStyle(
                                color: Color.fromARGB(215, 145, 141, 2),
                                decorationColor:
                                    Color.fromARGB(215, 145, 141, 2)),
                          ),
                          keyboardType: TextInputType.name)
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(15),
                  child: const Column(children: [
                    TextField(
                      obscureText: true,
                      cursorColor: Color.fromARGB(215, 145, 141, 2),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(
                                color: Color.fromARGB(215, 145, 141, 2)),
                            gapPadding: 4.0),
                        icon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(215, 145, 141, 2),
                        ),
                        labelText: "Password",
                        hintText: "Password",
                        labelStyle: TextStyle(
                          color: Color.fromARGB(215, 145, 141, 2),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    )
                  ]),
                ),
                const SizedBox(
                  height: 50,
                ),
                TextButton(
                  style: const ButtonStyle(
                      overlayColor: MaterialStatePropertyAll(
                          Color.fromARGB(163, 145, 140, 2))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Login()));
                  },
                  child: const Icon(
                    Icons.arrow_circle_right_outlined,
                    color: Color.fromARGB(215, 145, 141, 2),
                    size: 40,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
