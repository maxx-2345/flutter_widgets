import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Widget"),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(color: Colors.red),
            ),
            Positioned(
              right: 50,
                bottom: 50,
                child: Container(
                  height: 100,
              width: 100,
              decoration: const BoxDecoration(
                  color: Colors.yellow
              ),
                ),
            ),
            Positioned(
              right: 75,
                bottom: 75,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(color: Colors.green),
                ),
            )
          ],
        ),
      ),
    );
  }
}
