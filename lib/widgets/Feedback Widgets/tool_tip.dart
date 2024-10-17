import 'package:flutter/material.dart';

class ToolTipWidget extends StatelessWidget {
  const ToolTipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tool Tip Widget"),
      ),
      body: const Center(
        child: Tooltip(
          message: "It's a tool tip Message",
          child: Text("Hover over me to display tool tip message"),
        ),
      ),
    );
  }
}
