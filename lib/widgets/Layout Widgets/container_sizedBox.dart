import "package:flutter/material.dart";

class ContainerSized extends StatelessWidget {
  const ContainerSized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Container and sized box"),
      backgroundColor: Colors.amber,),
      body: Center(

          child:Container(
            // padding: EdgeInsets.all(10),
            // margin: EdgeInsets.all(10),
            height: 100, width: 100,
            decoration:BoxDecoration(
              color: Colors.blueAccent,
        // shape:BoxShape.circle,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomRight: Radius.circular(20),
          ),
              boxShadow: [
                BoxShadow(blurRadius: 20,spreadRadius: 5,color: Colors.yellow),
              ],
      ),
        child: Center(
          child: Container(
            margin: EdgeInsets.all(10),
            color: Colors.red,
            
          ),
      // Text("Hello!", style: TextStyle(fontSize: 20),)
      ), 
      )),
    );
  }
}