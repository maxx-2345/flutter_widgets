import "package:flutter/material.dart";

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SnackBar"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            overlayColor: WidgetStateProperty.all(Colors.amberAccent),
          ),
          onPressed: () {
            final snackbar = SnackBar(
              behavior: SnackBarBehavior.floating,
              backgroundColor: Colors.deepPurple,
              elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                content:  const Text("This is a SnackBar"),
              action: SnackBarAction(
                label: "Undo",
                onPressed: (){},
              ),

            );
            ScaffoldMessenger.of(context).showSnackBar(snackbar);
          },
          child:  const Text("Show SnackBar"),
        ),
      ),
    );
  }
}
