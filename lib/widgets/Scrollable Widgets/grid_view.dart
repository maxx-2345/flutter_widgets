import 'package:flutter/material.dart';



class GridViewWidget extends StatefulWidget {
  const GridViewWidget({super.key});

  @override
  State<GridViewWidget> createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid View Example"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.count(
            mainAxisSpacing: 30,
            crossAxisSpacing: 40,
            crossAxisCount: 3,
            children: [
              Container(
                height: 20,
                child: Center(
                    child: const Text("1",style: TextStyle(fontWeight: FontWeight.bold),)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red),
              ),
              Container(
                height: 20,
                child: Center(
                    child: const Text("2",style: TextStyle(fontWeight: FontWeight.bold),)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red),
              ),
              Container(
                height: 20,
                child: Center(
                    child: const Text("3",style: TextStyle(fontWeight: FontWeight.bold),)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red),
              ),
              Container(
                height: 20,
                child: Center(
                    child: const Text("4",style: TextStyle(fontWeight: FontWeight.bold),)),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                    color: Colors.red),
              ),
              Container(
                height: 20,
                child: Center(
                    child: const Text("5",style: TextStyle(fontWeight: FontWeight.bold),)),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                    color: Colors.red),
              ),
              Container(
                height: 20,
                child: Center(
                    child: const Text("6",style: TextStyle(fontWeight: FontWeight.bold),)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red),),
              Container(
                height: 20,
                child: Center(child: const Text("7",style: TextStyle(fontWeight: FontWeight.bold),)),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red),),
              Container(
                height: 20,
                child: Center(child: const Text("8",style: TextStyle(fontWeight: FontWeight.bold),)),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red),),
              Container(
                height: 20,
                child: Center(child: const Text("9",style: TextStyle(fontWeight: FontWeight.bold),)),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red),),
              Container(
                height: 20,
                child: Center(child: const Text("*",style: TextStyle(fontWeight: FontWeight.bold),)),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red),),
              Container(
                height: 20,
                child: Center(child: const Text("0",style: TextStyle(fontWeight: FontWeight.bold),)),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red),),
              Container(
                height: 20,
                child: Center(child: const Text("#",style: TextStyle(fontWeight: FontWeight.bold),)),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red),),

            ],
          ),
        ),
      ),
    );
  }
}


