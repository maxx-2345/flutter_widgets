import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {
  const WrapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Wrap Widget"),),
      body: Container(
        color: Colors.yellow,
        height: 300,
        width: 300,
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          runSpacing: 5,
          spacing: 5.5,
          direction: Axis.vertical,
          children: [
            Container(
              height: 60,
              width: 60,
              color: Colors.red,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.pink,
            ),Container(
              height: 60,
              width: 60,
              color: Colors.orange,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.blue,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.black,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.green,
            ),

          ],
        ),
      ),
    );
  }
}
