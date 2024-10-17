import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatefulWidget {
  const FloatingActionButtonWidget({super.key});

  @override
  State<FloatingActionButtonWidget> createState() => _FloatingActionButtonWidgetState();
}

class _FloatingActionButtonWidgetState extends State<FloatingActionButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Floating Action Button Widget"),),
      body: const Text("Hello"),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){},
        label: const Text("Chat"),
        icon: const Icon(Icons.chat),
      ),
    );
  }
}
