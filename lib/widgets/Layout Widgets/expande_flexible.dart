import 'package:flutter/material.dart';

class ExtendedAndFlexibleWidget extends StatefulWidget {
  const ExtendedAndFlexibleWidget({super.key});

  @override
  State<ExtendedAndFlexibleWidget> createState() => _ExtendedAndFlexibleWidgetState();
}

class _ExtendedAndFlexibleWidgetState extends State<ExtendedAndFlexibleWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Extended and flexible widgets'),
      ),
      body: Column(
        children: [
          Text("Expanded"),
          Container(
            width: double.infinity,
            height: 200,
            child: Row(
              children: [
                Container(width: 100,color: Colors.red,),
                Expanded(child: Container(color: Colors.yellow,)),
                Container(width: 100,color: Colors.grey,),
              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Text("Flex"),
          Container(
            width: double.infinity,
            height: 200,
            child: Row(
              children: [
              Flexible(flex: 1,child: Container(color: Colors.red,)),
                Flexible(flex: 3,child: Container(color: Colors.green,)),
                Flexible(flex: 1,child: Container(color: Colors.yellow,)),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
