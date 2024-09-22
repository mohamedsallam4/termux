import 'package:ecommerceapp/initHomepage.dart';
import 'package:ecommerceapp/initPageone.dart';
import 'package:ecommerceapp/initPagetwo.dart';
import 'package:ecommerceapp/popupmenuebottom.dart';
import 'package:ecommerceapp/searchDelegate.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const searchdelegate(),
      routes: {
        "Homepage": (context) => const homepage(),
        "Pageone": (context) => const Pageone(),
        "Pagetwo": (context) => const Pagetwo()
      },
    );
  }
}
