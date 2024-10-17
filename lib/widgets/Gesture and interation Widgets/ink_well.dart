import 'package:flutter/material.dart';

class InkWellWidget extends StatefulWidget {
  const InkWellWidget({super.key});

  @override
  State<InkWellWidget> createState() => _InkWellWidgetState();
}

class _InkWellWidgetState extends State<InkWellWidget> {
  double sideLength=50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ink Well Widget"),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 2000),
          curve: Curves.easeIn,
          height:sideLength ,
          width: sideLength,
          child: Material(
            color: Colors.yellow,
            child: InkWell(
              onTap: (){
                setState(() {
                  sideLength ==50?sideLength=100:sideLength=50;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
