import 'package:flutter/material.dart';

// ignore: camel_case_types
class test extends StatefulWidget {
  const test({super.key});
  @override
  State<StatefulWidget> createState() => _testState();
}

// ignore: camel_case_types
class _testState extends State<test> {
  late ScrollController scrollcontroller;
  @override
  void initState() {
    scrollcontroller = ScrollController();
    scrollcontroller.addListener(() {
      print("${scrollcontroller.offset}");
    });
    super.initState();
  }

  @override
  void dispose() {
    scrollcontroller
        .dispose(); //to be less stress and more flexable on the mobile
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Seach Delegate",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
              color: Colors.black,
              onPressed: () {
                showSearch(context: context, delegate: customm());
              },
              icon: const Icon(Icons.search))
        ],
      ),
      body: ListView(
        controller: scrollcontroller,
        children: [
          MaterialButton(
              onPressed: () {
                scrollcontroller.animateTo(9636,
                    duration: Duration(seconds: 10), curve: Curves.ease);
              },
              child: Text("JUMP TO BOTTOM ")),
          ...List.generate(
              100,
              (index) => Container(
                  height: 101,
                  alignment: Alignment.center,
                  color: index.isEven
                      ? const Color.fromARGB(255, 76, 201, 217)
                      : const Color.fromARGB(255, 144, 218, 255),
                  child: Text("$index",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25)))),
          MaterialButton(
              onPressed: () {
                // scrollcontroller.jumpTo(0); the second way
                scrollcontroller.animateTo(0,
                    duration: Duration(seconds: 10), curve: Curves.ease);
              },
              child: Text("JUMP TO TOP ")),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class customm extends SearchDelegate {
  List username = [
    "mohamed",
    "osama",
    "amr",
    "amir",
    "bassem",
    "basel",
    "hozaifa",
    "ramy",
    "aser",
    "ahmed",
    "mona",
    "omar",
    "mona",
    "salma",
    "roaa",
    "yara",
    "nada",
    "tala",
    "menna",
    "yara",
    "samah",
    "ibrahem",
    "sara",
    "rana",
    "rewan",
    "razan"
  ];
  List? newresult;
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: const Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("Result $query");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query == "") {
      return ListView.builder(
        itemCount: username.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              showResults(context);
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(username[index]),
              ),
            ),
          );
        },
      );
    } else {
      newresult = username.where((element) => element.contains(query)).toList();
      return ListView.builder(
        itemCount: newresult!.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              showResults(context);
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(newresult![index]),
              ),
            ),
          );
        },
      );
    }
  }
}
