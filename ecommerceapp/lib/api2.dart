import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

// ignore: camel_case_types
class api2 extends StatefulWidget {
  const api2({super.key});
  @override
  State<StatefulWidget> createState() => _api2State();
}

// ignore: camel_case_types
class _api2State extends State<api2> {
  bool loading = true;
  getdata() async {
    var response =
        await get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    var responsebody = jsonDecode(response.body);
    data.addAll(responsebody);
    loading = false;
    setState(() {});
  }

  @override
  void initState() {
    getdata();
    // TODO: implement initState
    super.initState();
  }

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
          if (loading == true)
            Center(
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
