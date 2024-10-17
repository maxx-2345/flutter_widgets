import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rich Text Widget"),
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            style: DefaultTextStyle.of(context).style,
            children: const <TextSpan>[
              TextSpan(text: "Hello"),
              TextSpan(text: "Flutter",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900)),
              TextSpan(text: 'World!'),
            ]
          ),
        ),
      ),
    );
  }
}
