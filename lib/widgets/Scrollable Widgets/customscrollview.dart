import 'Package:flutter/material.dart';

class CustomScrollViewWidget extends StatefulWidget {
  const CustomScrollViewWidget({super.key});

  @override
  State<CustomScrollViewWidget> createState() => _CustomScrollViewWidgetState();
}

class _CustomScrollViewWidgetState extends State<CustomScrollViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(

        slivers: [
          SliverAppBar(
            backgroundColor: Colors.grey,
            leading: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back)),
            expandedHeight: 400,
            pinned: true,
            flexibleSpace: const FlexibleSpaceBar(
              background: Image(
                image: NetworkImage("https://wallpapers.com/images/hd/vertical-pictures-r93cdchwdse79vvv.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
 SliverList(
     delegate: SliverChildBuilderDelegate((context,index){
       return ListTile(
         title: Text("Item $index"),
       );

     },
         // childCount =100;
       childCount: 100,

     ),

 ),
        ],
      ),
    );
  }
}
