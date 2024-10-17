import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Widget"),
      ),
      body: Center(
        child: SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width,
          child: Card(

            color: Colors.yellow,
            elevation: 20,
           shadowColor: Colors.yellow,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: const Center(child:  Text("This is a card")),
          ),
        ),
      ),
    );
  }
}
