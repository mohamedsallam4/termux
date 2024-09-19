import 'package:flutter/material.dart';

// ignore: camel_case_types
class form extends StatefulWidget {
  const form({super.key});

  @override
  State<StatefulWidget> createState() => _formState();
}

// ignore: camel_case_types
class _formState extends State<form> {
  String? username;
  String? phonnumber;

  GlobalKey<FormState> formstate = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              foregroundColor: const Color.fromARGB(255, 32, 77, 34),
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
                    autovalidateMode: AutovalidateMode.always,
                    onSaved: (val) {
                      username = val;
                    },
                    //      keyboardType: TextInputType.url,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "The field is empty";
                      }
                      if (value.length < 10) {
                        return "Please write the full name !";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid)),
                      hintText: "Name",
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 32, 77, 34))),
                      hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      label: Text("User Name",
                          style: TextStyle(
                              color: Color.fromARGB(255, 32, 77, 34))),
                      icon: Icon(Icons.person,
                          color: Color.fromARGB(255, 32, 77, 34)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onSaved: (val) {
                      phonnumber = val;
                    },
                    keyboardType: TextInputType.url,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "The field is empty";
                      }
                      if (value.length > 11) {
                        return "Sorry the number must be less than 11 numbers";
                      }
                      if (value.length < 9) {
                        return " Sorry the number must be more than 9 numbers";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid)),
                      hintText: "Phone Number",
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 32, 77, 34))),
                      hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      label: Text("Phone",
                          style: TextStyle(
                              color: Color.fromARGB(255, 32, 77, 34))),
                      icon: Icon(Icons.phone,
                          color: Color.fromARGB(255, 32, 77, 34)),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Column(
                    children: [
                      MaterialButton(
                        color: const Color.fromARGB(36, 0, 0, 0),
                        onPressed: () {
                          if (formstate.currentState!.validate()) {
                            formstate.currentState!.save();

                            print(username);
                            print(phonnumber);
                          } else {
                            print("not valid");
                          }
                        },
                        child: const Text(
                          "Search",
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
