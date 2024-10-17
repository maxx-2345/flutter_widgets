import 'package:flutter/material.dart';

class AlertDialogWidget extends StatefulWidget {
  const AlertDialogWidget({super.key});

  @override
  State<AlertDialogWidget> createState() => _AlertDialogWidgetState();
}

class _AlertDialogWidgetState extends State<AlertDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert Dialog Widget"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              title: const Text("Alert Dialog"),
              content: const SingleChildScrollView(
                child: ListBody(
                  children: [
                    Text("Do you accept"),
                    Text("Maaz Shaikh"),
                  ],
                ),
              ),
              actions: [
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: const Text("Cancel")),
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: const Text("Accept")),
              ],
            );
          }
          );
        },child: const Text("Show Dialog"),),
      ),
    );
  }
}




