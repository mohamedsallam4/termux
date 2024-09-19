import 'package:flutter/material.dart';

//طريقة عمل ال drawer في اي مكان في الصفحه
class drowing extends StatefulWidget {
  const drowing({super.key});

  @override
  State<StatefulWidget> createState() => _drowingState();
}

// ignore: camel_case_types
class _drowingState extends State<drowing> {
  GlobalKey<ScaffoldState> drowerkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      key: drowerkey,
      drawer: Drawer(),
      body: Container(
          width: 100,
          height: 100,
          child: Center(
            child: MaterialButton(
              onPressed: () {
                drowerkey.currentState!.openDrawer();
              },
              child: Text("drower"),
            ),
          )),
    ));
  }
}
