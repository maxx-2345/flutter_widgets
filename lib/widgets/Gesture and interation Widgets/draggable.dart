import 'Package:flutter/material.dart';

class DraggableWidget extends StatefulWidget {
  const DraggableWidget({super.key});

  @override
  State<DraggableWidget> createState() => _DraggableWidgetState();
}

class _DraggableWidgetState extends State<DraggableWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Draggable Widget"),
      ),

      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Draggable(
              child: Container(
                color: Colors.yellow,
                height: 150,
                width: 150,
                child: Center(child: Text("Draggable")),
              ),
              feedback: Container(
                color: Colors.deepOrange,
                height: 150,
                width: 150,
                child: const Center(child: Icon(Icons.run_circle_outlined)),

              ),
            childWhenDragging: Container(
              color: Colors.pink,
              height: 150,
              width: 150,
              child: const Center(child: Icon(Icons.stop_screen_share)),
            ),
          ),
        ],
      ),
    );
  }
}
