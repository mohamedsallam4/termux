import 'package:flutter/material.dart';

// import 'package:flutter_application_2/Listviewbuilder.dart';
import 'package:flutter_application_2/WelcomePage.dart';

//import 'package:flutter_application_2/WelcomePageAcc.dart';

// import 'package:flutter_application_2/WelcomePage.dart';

// import 'package:flutter_application_2/BestTools.dart';
// import 'package:flutter_application_2/MetaSploit.dart';
// import 'package:flutter_application_2/New_Bar.dart';
// import 'package:flutter_application_2/NgrokHelper.dart';
// import 'package:flutter_application_2/Notification.dart';
// import 'package:flutter_application_2/PageFour.dart';
// import 'package:flutter_application_2/SearchApp.dart';
// import 'package:flutter_application_2/SystemCommands.dart';
// import 'package:flutter_application_2/TermuxInstall.dart';
// import 'package:flutter_application_2/TermuxTools.dart';
// import 'package:flutter_application_2/V7xTools.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ORi",
      theme: ThemeData(fontFamily: "lo", primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: const WelcomePage(),
    );
  }
}
