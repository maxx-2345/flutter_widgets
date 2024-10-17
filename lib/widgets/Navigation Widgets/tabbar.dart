import 'package:flutter/material.dart';

import 'drawer.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({super.key});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tab Bar Widget"),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.cloud),),
              Tab(icon: Icon(Icons.umbrella),),
              Tab(icon: Icon(Icons.sunny),),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            DrawerWidget(),
            Center(child: Text("It's rainy here"),),
            Center(child: Text("It's sunny here"),),
          ],
        ),

      ),
    );
  }
}
