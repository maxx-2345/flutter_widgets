import "package:flutter/material.dart";

import "Scrollable Widgets/grid_view.dart";

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: TextButton(
                    style: ButtonStyle(
                        padding: WidgetStateProperty.all(EdgeInsets.all(10)),
                        overlayColor: WidgetStateProperty.all(Colors.lightBlue),
                        elevation: WidgetStateProperty.all(40),
                        backgroundColor:
                            WidgetStateProperty.all(Colors.yellow)),
                    child: Text(
                      "Press Me",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    onPressed: () {}),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 125,
                child: ElevatedButton(
                  style: ButtonStyle(
                      elevation: WidgetStateProperty.all(5),
                      overlayColor: WidgetStateProperty.all(Colors.yellow),
                      padding: WidgetStateProperty.all(EdgeInsets.all(10)),
                      backgroundColor: WidgetStateProperty.all(
                          Theme.of(context).primaryColor)),
                  onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> GridViewWidget()));
                  },
                  child: const Text(
                    "Click Me",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.arrow_back))
            ]),
      ),
    );
  }
}
