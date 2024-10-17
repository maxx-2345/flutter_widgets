import 'package:flutter/material.dart';

class RadioWidget extends StatefulWidget {
  const RadioWidget({super.key});

  @override
  State<RadioWidget> createState() => _RadioWidgetState();
}

class _RadioWidgetState extends State<RadioWidget> {
  String? _selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio Widget"),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: const Text("Singer"),
              leading: Radio(
                ///the below attributes are must in radio widget
                value: "Singer",
                groupValue: _selectedValue,
                onChanged: (String? value){
                  setState(() {
                    _selectedValue=value;
                  });
                },
              ),
            ),
            const SizedBox(height: 50,),
            ListTile(
              title: const Text("Dancer"),
              leading: Radio(
                value: "Dancer",
                groupValue: _selectedValue,
                onChanged: (String? value){
                  setState(() {
                    _selectedValue=value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
