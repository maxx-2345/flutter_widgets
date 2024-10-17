import 'package:flutter/material.dart';

class IconButtonWidget extends StatefulWidget {
  const IconButtonWidget({super.key});

  @override
  State<IconButtonWidget> createState() => _IconButtonWidgetState();
}

class _IconButtonWidgetState extends State<IconButtonWidget> {
  @override
  double _volume =0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Icon Butoon Widget"),
      ),
      body: Column(
        children: [
          IconButton(onPressed: (){
            setState(() {
              _volume=_volume+10;
            });
          }, icon: const Icon(Icons.volume_down_outlined)),
          Text("increment volume by 10 : $_volume")
        ],
      ),

    );
  }
}
