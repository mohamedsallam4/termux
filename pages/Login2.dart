import 'package:flutter/material.dart';
import 'package:flutter_application_2/PageTwo3.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          leading: const BackButton(
              style: ButtonStyle(
                  overlayColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 242, 239, 209)))),
          actions: [
            TextButton(
              onPressed: () {},
              style: const ButtonStyle(
                  overlayColor: MaterialStatePropertyAll(
                      Color.fromARGB(131, 242, 239, 209))),
              child: const Icon(
                Icons.edit_calendar_outlined,
                color: Colors.black,
              ),
            )
          ],
          foregroundColor: Colors.black,
          title: const Text("Sign Up"),
          backgroundColor: Color.fromARGB(213, 171, 165, 5)),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                color: const Color.fromARGB(255, 242, 239, 209),
                child: const TextField(
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.person,
                        color: Colors.black,
                        size: 30,
                      ),
                      labelText: " User Name ",
                      labelStyle: TextStyle(fontSize: 20),
                      hintText: " Mohamed Sallam "),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 242, 239, 209),
                child: const TextField(
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.numbers,
                        color: Colors.black,
                        size: 30,
                      ),
                      hintText: "0553657828",
                      labelText: "ID Number"),
                  keyboardType: TextInputType.number,
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 242, 239, 209),
                child: const TextField(
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.verified,
                        color: Colors.black,
                        size: 30,
                      ),
                      hintText: "3657828",
                      labelText: "verivication "),
                  keyboardType: TextInputType.number,
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 242, 239, 209),
                child: const TextField(
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.message,
                          color: Colors.black,
                          size: 30,
                        ),
                        hintText: "CODE",
                        labelText: "Message"),
                    keyboardType: TextInputType.text),
              ),
              Container(
                color: const Color.fromARGB(255, 242, 239, 209),
                child: const TextField(
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.phone,
                          color: Colors.black,
                          size: 30,
                        ),
                        hintText: "01003839775",
                        labelText: "Number"),
                    keyboardType: TextInputType.number),
              ),
              Container(
                color: const Color.fromARGB(255, 242, 239, 209),
                child: const TextField(
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.home_filled,
                          color: Colors.black,
                          size: 30,
                        ),
                        hintText: "sharmElshaikh",
                        labelText: "Home"),
                    keyboardType: TextInputType.streetAddress),
              ),
              Container(
                color: const Color.fromARGB(255, 242, 239, 209),
                child: const TextField(
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.link,
                          color: Colors.black,
                          size: 30,
                        ),
                        hintText: "xxxxxxxxxxxxxxxxxxxxxxx",
                        labelText: "Link"),
                    keyboardType: TextInputType.url),
              ),
              Container(
                color: const Color.fromARGB(255, 242, 239, 209),
                child: const TextField(
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.phone_in_talk_sharp,
                          color: Colors.black,
                          size: 30,
                        ),
                        hintText: "0552223651458",
                        labelText: "Home Number"),
                    keyboardType: TextInputType.number),
              ),
              Container(
                color: const Color.fromARGB(255, 242, 239, 209),
                child: const TextField(
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.near_me_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                      hintText: "4545216561244232",
                      labelText: "Privete ID"),
                  keyboardType: TextInputType.number,
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 242, 239, 209),
                child: const TextField(
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.add_card,
                        color: Colors.black,
                        size: 30,
                      ),
                      hintText: "5888557742169694",
                      labelText: "VESA"),
                  keyboardType: TextInputType.number,
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 242, 239, 209),
                child: const TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.swap_calls,
                        color: Colors.black,
                        size: 30,
                      ),
                      hintText: "20",
                      labelText: "Calls",
                    ),
                    keyboardType: TextInputType.number),
              ),
              Column(
                children: [
                  TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PageTwo()));
                    },
                    icon: const Icon(
                      Icons.arrow_circle_right_outlined,
                      color: Color.fromARGB(215, 145, 141, 2),
                    ),
                    label: const Text("Sign In",
                        style: TextStyle(
                          color: Color.fromARGB(213, 171, 165, 5),
                        )),
                    style: const ButtonStyle(
                        overlayColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 242, 239, 209))),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
