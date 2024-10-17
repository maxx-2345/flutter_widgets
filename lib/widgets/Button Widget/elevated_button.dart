import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatefulWidget {
  const ElevatedButtonWidget({super.key});

  @override
  State<ElevatedButtonWidget> createState() => _ElevatedButtonWidgetState();
}

class _ElevatedButtonWidgetState extends State<ElevatedButtonWidget> {
  @override
  double _increment =0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Elevated Button Widget"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              setState(() {
                _increment++;
              });
            }, child: const Text("Elevated Button")),
            Text("Increment by 1: $_increment",style: TextStyle(fontSize: 25),)
          ],
        ),
      ),
    );
  }
}
