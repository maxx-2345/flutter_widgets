import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool _isChecked=false;
  bool _isChecked2=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CheckBox Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              activeColor: Colors.lightBlueAccent,
              checkColor: Colors.white,
              hoverColor: Colors.amber,
              overlayColor: WidgetStateProperty.all(Colors.blue),
              splashRadius: 50,
              value: _isChecked,
              onChanged: (bool? value){
                setState(() {
                  _isChecked=value!;
                });
              },
            ),
            const SizedBox(height: 50,),
            Checkbox(
              // activeColor: Colors.lightBlueAccent,
              // checkColor: Colors.white,
              // hoverColor: Colors.amber,
              // overlayColor: WidgetStateProperty.all(Colors.blue),
              // splashRadius: 50,

              ///below attributes are must in a checkbox
              value: _isChecked2,
              onChanged: (bool? value){
                setState(() {
                  _isChecked2=value!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
