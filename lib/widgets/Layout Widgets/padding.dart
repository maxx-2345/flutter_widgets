import 'package:flutter/material.dart';

class PaddingWidget extends StatelessWidget {
  const PaddingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text("Padding Widget"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10,right: 20,top: 80,bottom: 40),
        child: Container(

          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(color: Colors.red),
        ),
      ),
    );
  }
}
