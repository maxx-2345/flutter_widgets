import 'package:flutter/material.dart';

class GestureDetectorWidget extends StatefulWidget {
  const GestureDetectorWidget({super.key});

  @override
  State<GestureDetectorWidget> createState() => _GestureDetectorWidgetState();
}

class _GestureDetectorWidgetState extends State<GestureDetectorWidget> {
  @override
  bool _isColorOn=false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gesture Detector Widget"),
      ),
      body: Expanded(

        child: GestureDetector(
          onTap: (){
           setState(() {
             _isColorOn=!_isColorOn;
           });
          },
          child: Container(
            color: _isColorOn?Colors.red:Colors.yellow,
            width: double.infinity,
          ),
        ),
      ),
    );
  }
}
