import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlignmentWidget extends StatelessWidget {
  const AlignmentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alignment Widget"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.lightBlueAccent,
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  color: Colors.red,
                  height: 50,
                  width: 50,
                ),
              ),
            ),

            const Spacer(flex: 1,),
            Container(
              height: 200,
              width: 200,
              color: Colors.lightBlueAccent,
              child: Align(
                alignment: Alignment(0.3,0.5),
                child: Container(
                  color: Colors.red,
                  height: 50,
                  width: 50,
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
