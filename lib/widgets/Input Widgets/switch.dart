import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool _iscoloron=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.lightbulb_outline,color: _iscoloron?Colors.yellow:Colors.black,size: 50,),
            Switch(
              // activeColor: Colors.green,
                value: _iscoloron,
                onChanged: (bool value){
                  setState(() {
                    _iscoloron=value;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
