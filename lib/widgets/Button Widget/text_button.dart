import 'package:flutter/material.dart';

class TextButtonWidget extends StatefulWidget {
  const TextButtonWidget({super.key});

  @override
  State<TextButtonWidget> createState() => _TextButtonWidgetState();
}

class _TextButtonWidgetState extends State<TextButtonWidget> {
  @override
  double _increment = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Text Butoon Widget"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: const Text("Press Me!"),
              onPressed: (){
                setState(() {
                  _increment++;
                });
              },

            ),
            Text("increment = $_increment",style: const TextStyle(fontSize: 25),)
          ],
        ),
      ),
    );
  }
}
