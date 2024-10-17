import 'package:flutter/material.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({super.key});

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  @override
  List<String> fruits = ["Orange","Banana","Mango","Apple"];
  List<String> person = ["Mohit","Subhash","Abhishek","Shubham"];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
 leading: const Padding(
   padding: const EdgeInsets.all(8.0),
   child: CircleAvatar(
     radius: 100,
     backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNn3ygM-e3ezPhbth7zvDi4SFy0JTCHPIatg&s"),
   ),
 ),
        title: Center(child: const Text("List View Example")),
        backgroundColor: Colors.red,
        elevation: 10,
        actions: const[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: fruits.length,
          itemBuilder:(context,index){
            return Card(
              margin: EdgeInsets.all(5),
              color: Colors.amber,
              elevation: 10,
              child:ListTile(
                title: Text(fruits[index]),
                subtitle: Text(person[index]),
              ),
            );
          }
      ),
    );
  }
}
