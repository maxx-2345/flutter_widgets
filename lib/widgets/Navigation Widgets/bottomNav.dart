import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/Navigation%20Widgets/tabbar.dart';

import '../buttons.dart';
import '../dissmissible.dart';
import 'drawer.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _selectedIndex=0;
  final PageController _controller =PageController();
  _onTapped(int index){
    setState(() {
      _selectedIndex =index;
    });
    _controller.jumpToPage(index);
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: 'add'),
          BottomNavigationBarItem(icon: Icon(Icons.abc),label: 'abc'),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'settings'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.green,
        onTap: _onTapped,
      ),
      body: PageView(
        controller: _controller,
        children:const [
          DrawerWidget(),
          TabBarWidget(),
          ButtonWidget(),
          DissmissibleWidget(),
        ],
      ),
    );
  }
}
