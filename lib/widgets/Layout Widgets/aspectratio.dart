import 'package:flutter/material.dart';

class AspectratioWidget extends StatelessWidget {
  const AspectratioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aspect Ratio Widget'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.red,
        alignment: Alignment.center,
        child: AspectRatio(
          aspectRatio: 10/5,
          child: Container(
            color: Colors.yellow,
          ),
        ),
      ),
    );
  }
}
