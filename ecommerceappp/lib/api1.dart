import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

// ignore: camel_case_types
class api1 extends StatefulWidget {
  const api1({super.key});
  @override
  State<StatefulWidget> createState() => _api1State();
}

// ignore: camel_case_types
class _api1State extends State<api1> {
  bool loading = false;
  List data = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "PACKAGE",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(40, 10, 40, 10),
            child: MaterialButton(
              color: Colors.cyan,
              onPressed: () async {
                loading = true;
                setState(() {});
                var response = await get(
                  Uri.parse("https://jsonplaceholder.typicode.com/posts"),
                );
                var responsebody = jsonDecode(response.body);
                print(responsebody);
                print(responsebody[0]);
                print(responsebody[0]["title"]);
                data.addAll(responsebody);
                loading = false;
                setState(() {});
              },
              child: const Text("HTTP REQUEST"),
            ),
          ),
          if (loading == true)
            const Center(
              child: CircularProgressIndicator(),
            ),
          ...List.generate(
              data.length,
              (index) => Card(
                    child: ListTile(
                      title: Text("${data[index]["title"]}"),
                      subtitle: Text("${data[index]["body"]}"),
                      trailing: Text("ID : ${data[index]["userId"]}"),
                      leading: Text("${data[index]["id"]}"),
                    ),
                  ))
        ],
      ),
    );
  }
}
