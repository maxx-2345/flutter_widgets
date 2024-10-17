import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/Navigation%20Widgets/tabbar.dart';


import 'bottomNav.dart';
import '../buttons.dart';
import '../dissmissible.dart';
import 'drawer.dart';

class PageViewWidget extends StatefulWidget {
  const PageViewWidget({super.key});

  @override
  State<PageViewWidget> createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page View"),
      ),
      body: PageView(
        children: [
          TabBarWidget(),
          DrawerWidget(),
          ButtonWidget(),
          DissmissibleWidget(),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items:[
      //     BottomNavigationBarItem(icon: Icon(Icons.home),label: "index 0"),
      //     BottomNavigationBarItem(icon: Icon(Icons.add),label: "index 1"),
      //     BottomNavigationBarItem(icon: Icon(Icons.settings),label: "index 2"),
      //   ],
      //   onTap: (index){
      //     _controller.jumpToPage(index);
      //   },
      // ),
    );
  }
}
