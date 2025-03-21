import "package:flutter/material.dart";

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    String screenText = 'Hello there!';
    return Scaffold(
     appBar: AppBar(
     title:const Text("Drawer Example"),
    ),
      body:  Center(
        child: Text("$screenText"),
      ),

      drawer: Drawer(

        child: ListView(

          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(child: Container(
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(color: Colors.blueGrey),
            )),
          const ListTile(
             title: Text("My Files"),
            leading: Icon(Icons.folder_copy),
           ),
            const ListTile(
              title: Text("My Files"),
              leading: Icon(Icons.folder_copy),
            ),
            const ListTile(
              title: Text("My Files"),
              leading: Icon(Icons.folder_copy),
            ),
            const ListTile(
              title: Text("My Files"),
              leading: Icon(Icons.folder_copy),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
