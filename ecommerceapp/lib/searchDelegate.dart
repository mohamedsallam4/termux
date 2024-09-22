import 'package:flutter/material.dart';

// ignore: camel_case_types
class searchdelegate extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables

  const searchdelegate({super.key});

  @override
  State<StatefulWidget> createState() => _searchdelegateState();
}

// ignore: camel_case_types
class _searchdelegateState extends State<searchdelegate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("search delegate "),
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: customsearch());
              },
              icon: Icon(Icons.search))
        ],
      ),
      body: ListView(children: []),
    );
  }
}

class customsearch extends SearchDelegate {
  List username = [
    "mohamed ",
    "ezzat ",
    "hamza ",
    "ahmed ",
    "aser ",
    "mahmoud ",
    "loai "
  ];
  List? filterlist;
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("Result$query");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query == "") {
      return ListView.builder(
        itemCount: username.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => showResults(context),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "${username[index]}",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          );
        },
      );
    } else {
      filterlist =
          username.where((element) => element.contains(query)).toList();
      return ListView.builder(
        itemCount: filterlist!.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => showResults(context),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "${filterlist![index]}",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          );
        },
      );
    }
  }
}
