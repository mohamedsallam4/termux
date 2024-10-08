import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Api4 extends StatefulWidget {
  const Api4({super.key});

  @override
  State<StatefulWidget> createState() => _Api4State();
}

class _Api4State extends State<Api4> {
  Future<List> getdate() async {
    var response =
        await get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    List responsebody = jsonDecode(response.body);
    return responsebody;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 226, 136, 0),
        title: const Text("Orange",
            style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
        elevation: 0,
      ),
      body: FutureBuilder(
          future: getdate(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return const Text("ERORR");
              }
              return ListView.builder(
                itemCount: snapshot.data!.length,
                //يستقبل البيانات من الموقع في  snapshot.data
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("${snapshot.data![index]["title"]}"),
                    subtitle: Text("${snapshot.data![index]["body"]}"),
                    leading: Text("${snapshot.data![index]["id"]}"),
                    trailing: Text("${snapshot.data![index]["userId"]}"),
                  );
                },
              );
            }

            return const Text("");
          }),
    );
  }
}
