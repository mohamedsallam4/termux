import 'package:flutter/material.dart';

class Pro_2 extends StatelessWidget {
  const Pro_2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(),
          body: Container(
            child: Column(
              children: [
                MaterialButton(
                  onPressed: () {
                    print("mohamed sallam");
                  },
                  onLongPress: () {
                    print("sallam");
                  },
                  child: Text("mohamed"),
                  minWidth: 200,
                  color: Colors.redAccent,
                ),
                Container(
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.wallet)),
                )
              ],
            ),
          ),
        ));
  }
}
