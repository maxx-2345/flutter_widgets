import 'package:flutter/material.dart';

class SpacerWidget extends StatelessWidget {
  const SpacerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Spacer Widget"),),
      body: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 50,
                color: Colors.red,
              ),
              const Spacer(flex: 2,),
              Container(
                height: 50,
                width: 50,
                color: Colors.red,
              ),
              const Spacer(flex: 1,),
              Container(
                height: 50,
                width: 50,
                color: Colors.red,
              ),
              const Spacer(flex: 3,),
              Container(
                height: 50,
                width: 50,
                color: Colors.red,
              ),
              const Spacer(flex: 6,),
              Container(
                height: 50,
                width: 50,
                color: Colors.red,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
