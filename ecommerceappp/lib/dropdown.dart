import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:ecommerceapp/packages/dropdown.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class dropdown extends StatefulWidget {
  const dropdown({super.key});
  @override
  State<StatefulWidget> createState() => _dropdownState();
}

// ignore: camel_case_types
class _dropdownState extends State<dropdown> {
  TextEditingController country = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController sports = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 226, 136, 0),
          title: const Text("Orange",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold)),
          centerTitle: true,
          elevation: 0,
        ),
        body: ListView(
          children: [
            AppTextField(
                datalist: [
                  SelectedListItem(name: "EGYPT"),
                  SelectedListItem(name: "QATAR"),
                  SelectedListItem(name: "SYRIA"),
                  SelectedListItem(name: "IRAQ"),
                  SelectedListItem(name: "IRAN"),
                  SelectedListItem(name: "LIBIA"),
                  SelectedListItem(name: "MOROCOO"),
                  SelectedListItem(name: "UAE"),
                ],
                textEditingController: country,
                title: " Select Country ",
                hint: "country",
                isCitySelected: true),
            AppTextField(
                datalist: [
                  SelectedListItem(name: "10:20"),
                  SelectedListItem(name: "20:30"),
                  SelectedListItem(name: "30:40"),
                  SelectedListItem(name: "40:50"),
                  SelectedListItem(name: "50:60"),
                  SelectedListItem(name: "60:70"),
                ],
                textEditingController: age,
                title: " Select Age ",
                hint: "Age",
                isCitySelected: true),
            AppTextField(
                datalist: [
                  SelectedListItem(name: "Football"),
                  SelectedListItem(name: "Tennis"),
                  SelectedListItem(name: "Hoky"),
                  SelectedListItem(name: "Basketball"),
                  SelectedListItem(name: "Handball"),
                  SelectedListItem(name: "Vollyball"),
                ],
                textEditingController: sports,
                title: " Select Sports",
                hint: "Sports",
                isCitySelected: true),
          ],
        ));
  }
}
