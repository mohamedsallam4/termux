import 'package:flutter/material.dart';

// ignore: camel_case_types
class textfrom extends StatefulWidget {
  const textfrom({super.key});

  @override
  State<StatefulWidget> createState() => _textfromState();
}

// ignore: camel_case_types
class _textfromState extends State<textfrom> {
  String? textval1;
  GlobalKey<FormState> formstate = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            drawer: Drawer(
                child: Container(
              padding: const EdgeInsets.all(15),
              child: ListView(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 60,
                        width: 60,
                        child: ClipRect(
                          child: Image.asset(
                            "imges/jjjj.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Expanded(
                          child: ListTile(
                        title: Text("mohamed sallam "),
                        subtitle: Text("mohamedsallam20045@gmail.com"),
                      ))
                    ],
                  ),
                  ListTile(
                    title: const Text("Home Page"),
                    leading: const Icon(Icons.home),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text("Account "),
                    leading: const Icon(Icons.account_box_outlined),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text("Order "),
                    leading: const Icon(Icons.check_box),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text("About US"),
                    leading: const Icon(Icons.help),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text("Contact US"),
                    leading: const Icon(Icons.phone_android_sharp),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text(" Sign Out"),
                    leading: const Icon(Icons.exit_to_app),
                    onTap: () {},
                  )
                ],
              ),
            )),
            appBar: AppBar(
              foregroundColor: const Color.fromARGB(255, 32, 77, 34),
              title: const Text("DOWNLOADING"),
              backgroundColor: const Color.fromARGB(36, 0, 0, 0),
            ),
            body: SingleChildScrollView(
              child: Form(
                key: formstate,
                child: Column(children: [
                  const SizedBox(
                    height: 150,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.url,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "The field is empty";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      textval1 = value;
                      print(value);
                    },
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                      hintText: "Your Name",
                      //   border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 32, 77, 34))),

                      hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      label: Text("User Name",
                          style: TextStyle(
                              color: Color.fromARGB(255, 32, 77, 34))),
                      icon: Icon(Icons.person,
                          color: Color.fromARGB(255, 32, 77, 34)),
                      //prefix: Icon(Icons.person),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.url,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "The field is empty";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      textval1 = value;
                      print(value);
                    },
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                      hintText: "Your Phone Number",
                      //   border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 32, 77, 34))),

                      hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      label: Text("Phone",
                          style: TextStyle(
                              color: Color.fromARGB(255, 32, 77, 34))),
                      icon: Icon(Icons.phone,
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
                          if (formstate.currentState!.validate()) {
                            print(textval1);
                          } else {
                            print("not valid");
                          }
                        },
                        child: const Text(
                          "Downloading",
                          style:
                              TextStyle(color: Color.fromARGB(255, 32, 77, 34)),
                        ),
                      )
                    ],
                  )
                ]),
              ),
            )));
  }
}
