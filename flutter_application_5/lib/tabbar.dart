import 'package:flutter/material.dart';

// ignore: camel_case_types
class tabbar extends StatefulWidget {
  const tabbar({super.key});

  @override
  State<StatefulWidget> createState() => _tabbarState();
}

// ignore: camel_case_types
class _tabbarState extends State<tabbar> with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
              controller: tabController,
              indicatorColor: Colors.black,
              indicatorWeight: 4,
              labelColor: const Color.fromARGB(255, 152, 252, 255),
              unselectedLabelColor: Colors.black,
              unselectedLabelStyle: const TextStyle(fontSize: 10),
              labelStyle: const TextStyle(fontSize: 20),
              tabs: const [
                Tab(
                  icon: Icon(Icons.home),
                  text: " Home ",
                ),
                Tab(
                  icon: Icon(Icons.account_box),
                  text: " Account ",
                ),
                Tab(
                  icon: Icon(Icons.settings),
                  text: " Settings ",
                )
              ]),
        ),
        body: TabBarView(controller: tabController, children: [
          Column(
            children: [
              const Text("Home page"),
              MaterialButton(
                onPressed: () {
                  tabController!.animateTo(2);
                },
                child: const Text(" GO to Settings "),
              ),
              MaterialButton(
                onPressed: () {
                  tabController!.animateTo(1);
                },
                child: const Text(" GO to Account "),
              )
            ],
          ),
          Column(
            children: [
              const Text("Account"),
              MaterialButton(
                onPressed: () {
                  tabController!.animateTo(0);
                },
                child: const Text(" GO to Home Page "),
              ),
              MaterialButton(
                onPressed: () {
                  tabController!.animateTo(2);
                },
                child: const Text(" GO to Settings "),
              )
            ],
          ),
          Column(
            children: [
              const Text("setting"),
              MaterialButton(
                onPressed: () {
                  tabController!.animateTo(0);
                },
                child: const Text(" GO to Home Page "),
              ),
              MaterialButton(
                onPressed: () {
                  tabController!.animateTo(1);
                },
                child: const Text(" GO to Account "),
              )
            ],
          )
        ]),
      ),
    );
  }
}
