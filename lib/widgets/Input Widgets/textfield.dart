import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({super.key});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
 bool _secureText=true;
  @override
  Widget build(BuildContext context) {
     return Scaffold(
     appBar: AppBar(
       title: const Text("TextField Widget"),
     ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
               SizedBox(
                width: 250,
                child: TextField(
                  onSubmitted: (String value) async {
                    await showDialog(context: context, builder: (context){
                      return AlertDialog(
                        title: const Text("Thanks!"),
                        content: Text("You typed $value"),
                        actions: [
                          TextButton(
                              onPressed: (){
                                Navigator.pop(context);
                              },
                              child: const Text("Ok"))
                        ],
                      );
                    });
                  },
                  obscureText: _secureText,
                  textAlign: TextAlign.center,
                  decoration:  InputDecoration(
                      border: const OutlineInputBorder(),
                       labelText: "Password",
                   suffixIcon: IconButton(
                       onPressed: (){
                         setState(() {
                           _secureText=!_secureText;
                         });
                       },
                       icon: const Icon(Icons.remove_red_eye)),
                  ),
                ),
              ),

          ],
        ),
      ),
    );
  }
}
