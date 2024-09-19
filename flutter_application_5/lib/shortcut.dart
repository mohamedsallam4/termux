import 'package:flutter/material.dart';

// ignore: camel_case_types
class shortcut extends StatefulWidget {
  const shortcut({super.key});

  @override
  State<StatefulWidget> createState() => _shortcutState();
}

// ignore: camel_case_types
class _shortcutState extends State<shortcut> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(),
          body: Container(
            padding: const EdgeInsets.all(12),
            child: const Column(children: [
              customcard(
                name: "Mohamed Sallam",
                email: "mohamedsallam20045@gmail.com",
                date: "2024-5-20",
                imagename: 'images/fhdjufd.jpg',
              ),
              customcard(
                name: "Ezzat Sallam",
                email: "ezzatsallam120@gmail.com ",
                date: "2024-6-14",
                imagename: 'images/shdh.jpg',
              ),
            ]),
          )),
    );
  }
}

// ignore: camel_case_types
class customcard extends StatelessWidget {
  const customcard(
      {super.key,
      required this.name,
      required this.email,
      required this.date,
      required this.imagename});
  final String name;
  final String email;
  final String date;
  final String imagename;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(children: [
        Container(
            padding: const EdgeInsets.all(6),
            height: 60,
            width: 60,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(70),
                child: Image.asset(imagename))),
        Expanded(
          child: ListTile(
            title: Text(name),
            subtitle: Text(
              email,
              style: const TextStyle(fontSize: 9.1),
            ),
            trailing: Text(date),
          ),
        ),
      ]),
    ));
  }
}
