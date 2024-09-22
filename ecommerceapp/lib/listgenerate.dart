import 'package:flutter/material.dart';

// ignore: camel_case_types
class generate extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables

  const generate({super.key});

  @override
  State<StatefulWidget> createState() => _generateState();
}

// ignore: camel_case_types
class _generateState extends State<generate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("age"),
      ),
      endDrawer: const Drawer(),
      body: ListView(
        children: [...List.generate(125, (index) => Text("${1900 + index}"))],
      ),
    );
  }
}
