import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

// ignore: camel_case_types
class api3 extends StatefulWidget {
  const api3({super.key});
  @override
  State<StatefulWidget> createState() => _api3State();
}

// ignore: camel_case_types
class _api3State extends State<api3> {
  Future<List> getdata() async {
    //علشان دي بتتخزن في future
    //والبيانات ال عندي بترجع على هيئة ليست

    var response =
        await get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    List responsebody = jsonDecode(response.body);
    //بما ان الفنكشن من نوع ليست فلازم تريتيرن ليست

    return responsebody;
  }

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
        body: FutureBuilder<List>(
          //نوعها ليست علشان البيانات ال هستقبلها من ال
          //API هيا ليست
          //بديل عن استخدام السيت استيت وانشاء ليست
          future: getdata(), //استقبال فنكشن من نوع فيوتشر
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              //لو في حالةاستقبال للبيانات فهتنفذ الريتيرن
              return const Center(child: CircularProgressIndicator());
            }
            if (snapshot.connectionState == ConnectionState.done) {
              //لو هوا اتصل بالفعل
              if (snapshot.hasError) {
                //لو في خطأفي الموقع المرسل
                return const Text("ERORR");
              }
              //لو مفيش خطأ فهتريتيرن الليست ال عاوز تطبعها وعلى حسنلتا يساناتك ال هتستقبلها من الموقع من نوع اي بالظبط
              // علشان عندي بياناتي من نوع ليست فأستخدمت ليست فيو علشان ارجعها
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
            //لازم تعمل ريتيرن لتفادي الخطأ لان القيمه يمكن ان تكون نل
            //لو مش في حالة انه مش متصل اصلا
            return const Text("");
          },
        ));
  }
}
