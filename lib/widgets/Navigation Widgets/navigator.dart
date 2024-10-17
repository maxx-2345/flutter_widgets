import 'Package:flutter/material.dart';
import '../buttons.dart';

class NavigatorWidget extends StatefulWidget {
  const NavigatorWidget({super.key});

  @override
  State<NavigatorWidget> createState() => _NavigatorWidgetState();
}

class _NavigatorWidgetState extends State<NavigatorWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(child: const Text("Press me"), onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const ButtonWidget()));
        },),
      ),
    );
  }
}
