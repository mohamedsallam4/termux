import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int i = 0;
  bool status = false;
  String? country;
  String? age;
  bool trust = false;
  // ignore: non_constant_identifier_names
  bool Football = false;
  // ignore: non_constant_identifier_names
  bool Tennis = false;
  // ignore: non_constant_identifier_names
  bool Basketball = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          i++;
                        });

                        print(i);
                      },
                      icon: const Icon(Icons.add))
                ],
              ),
              Container(
                //    alignment: Alignment.center,
                width: 800,
                height: 40,
                color: Colors.green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Counter $i")],
                ),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          i--;
                        });

                        print(i);
                      },
                      icon: const Icon(Icons.minimize))
                ],
              ),
              SwitchListTile(
                title: const Text("Status"),
                activeColor: Colors.red,
                hoverColor: Colors.black,
                inactiveThumbColor: Colors.green,
                value: status,
                onChanged: (value) {
                  setState(() {
                    status = value;
                  });
                },
              ),
              Column(
                children: [
                  const Text("choose your country!"),
                  RadioListTile(
                      title: const Text("EGYPT"),
                      value: "EGYPT",
                      groupValue: country,
                      onChanged: (val) {
                        setState(() {
                          country = val;
                        });
                      }),
                  RadioListTile(
                      title: const Text("IRAQ"),
                      value: "IRAQ",
                      groupValue: country,
                      onChanged: (val) {
                        setState(() {
                          country = val;
                        });
                      }),
                  RadioListTile(
                      title: const Text("QATAR"),
                      value: "QATAR",
                      groupValue: country,
                      onChanged: (val) {
                        setState(() {
                          country = val;
                        });
                      }),
                ],
              ),
              Column(
                children: [
                  const Text("choose your age!"),
                  RadioListTile(
                    title: const Text("10 : 20"),
                    value: "10: 20",
                    groupValue: age,
                    onChanged: (val) {
                      setState(
                        () {
                          age = val;
                        },
                      );
                    },
                  ),
                  RadioListTile(
                    title: const Text("20: 30"),
                    value: "20: 30",
                    groupValue: age,
                    onChanged: (val) {
                      setState(
                        () {
                          age = val;
                        },
                      );
                    },
                  ),
                  RadioListTile(
                    title: const Text("30: 40"),
                    value: "30: 40",
                    groupValue: age,
                    onChanged: (val) {
                      setState(
                        () {
                          age = val;
                        },
                      );
                    },
                  ),
                  Text(
                    " Your country is $country and age is between $age ",
                    style: const TextStyle(
                        color: Color.fromARGB(255, 107, 36, 31)),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("SPORTS"),
              Column(
                children: [
                  CheckboxListTile(
                      title: const Text("Football"),
                      value: Football,
                      onChanged: (value) {
                        setState(() {
                          Football = value!;
                        });
                      }),
                  CheckboxListTile(
                      title: const Text("Tennis"),
                      value: Tennis,
                      onChanged: (value) {
                        setState(() {
                          Tennis = value!;
                        });
                      }),
                  CheckboxListTile(
                      title: const Text("Basketball"),
                      value: Basketball,
                      onChanged: (value) {
                        setState(() {
                          Basketball = value!;
                        });
                      }),
                ],
              ),
              Column(
                children: [
                  CheckboxListTile(
                      title: const Text(
                        "Are you Accepted the Rule and Privecy",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 107, 36, 31)),
                      ),
                      value: trust,
                      onChanged: (val) {
                        setState(() {
                          trust = val!;
                        });
                      }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
