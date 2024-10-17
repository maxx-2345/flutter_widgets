import "package:flutter/material.dart";

class DissmissibleWidget extends StatefulWidget {
  const DissmissibleWidget({super.key});

  @override
  State<DissmissibleWidget> createState() => _DissmissibleWidgetState();
}

class _DissmissibleWidgetState extends State<DissmissibleWidget> {
  List<String> fruits = ["Mango", "Banana", "Apple", "Grapes"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dissmissible Package"),
          backgroundColor: Colors.deepPurple,
        ),
        body: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            final fruit = fruits[index];
            return Dismissible(
              onDismissed: (direction) {
                if (direction == DismissDirection.startToEnd) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(fruits[index]),
                    backgroundColor: Colors.red,
                    duration: const Duration(milliseconds: 1000),
                  ));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(fruits[index]),
                    backgroundColor: Colors.green,
                    duration: const Duration(milliseconds: 1000),
                  ));
                }
                ;
              },
              key: Key(fruit),
              background: Container(
                color: Colors.red,
              ),
              secondaryBackground: Container(
                color: Colors.green,
              ),
              child: Card(
                child: ListTile(
                  title: Text(fruits[index]),
                ),
              ),
            );
          },
        ));
  }
}




















// ListView.builder(
//         itemCount: fruits.length,
//         itemBuilder: (context, index) {
//           final fruit = fruits[index];
//           return Dismissible(
//             onDismissed: (direction) {
//               if (direction == DismissDirection.startToEnd) {
//                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                   content: Text(fruits[index]),
//                   backgroundColor: Colors.red,
//                 ));
//               } else {
//                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                   content: Text(fruits[index]),
//                   backgroundColor: Colors.green,
//                 ));
//               }
//             },
//             key: Key(fruit),
//             background: Container(
//               color: Colors.red,
//             ),
//             secondaryBackground: Container(
//               color: Colors.green,
//             ),
//             child: Card(
//               child: ListTile(
//                 title: Text(fruits[index]),
//               ),
//             ),
//           );
//         },
//       ),