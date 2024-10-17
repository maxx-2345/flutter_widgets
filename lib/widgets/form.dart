import "package:flutter/material.dart";

class FormCheck extends StatefulWidget {
  const FormCheck({super.key});

  @override
  State<FormCheck> createState() => _FormCheckState();
}

class _FormCheckState extends State<FormCheck> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Form Field'),
      ),
      body: Container(
        child: TextFormField(
          decoration: const InputDecoration(
              hintText: 'Enter you name',
              icon: Icon(Icons.person),
              prefixIcon: Icon(Icons.account_balance),
              suffixIcon: Icon(Icons.cancel)),
        ),
        
      ),
    );
  }
}
