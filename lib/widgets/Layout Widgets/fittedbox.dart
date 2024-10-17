import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FittedBoxWidget extends StatelessWidget {
  const FittedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fitted Box Widget"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.blue,
        child:  FittedBox(
          fit: BoxFit.fitWidth,
          child: Placeholder(),
        ),
      ),
    );
  }
}
