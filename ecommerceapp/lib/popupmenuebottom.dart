import 'package:flutter/material.dart';

// ignore: camel_case_types
class popup extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables

  const popup({super.key});

  @override
  State<StatefulWidget> createState() => _popupState();
}

// ignore: camel_case_types
class _popupState extends State<popup> {
  @override
  void initState() {
    print("=============================Page One initialState");

    super.initState();
  }

  @override
  void dispose() {
    print("page one removed from your stack ");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("popup menu bottom "),
        actions: [
          PopupMenuButton(
            onCanceled: () {
              print("you alreadt cancele the popupmenu botton");
            },
            onOpened: () {
              print("you alreadt opend the popupmenu botton");
            },
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text(" One "),
                onTap: () => print("one*"),
                value: "val one",
              ),
              PopupMenuItem(
                child: Text(" Two "),
                onTap: () => print("two*"),
                value: "val two",
              )
            ],
          )
        ],
      ),
      body: ListView(children: []),
    );
  }
}
