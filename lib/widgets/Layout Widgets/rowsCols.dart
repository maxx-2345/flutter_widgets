import "package:flutter/material.dart";

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Rows & Cols"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        height: h,
        width: w,
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 60,
              width: 60,
              color: Colors.black,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.red,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.blue,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.lightGreen,
            ),
            Container(
              height: 60,
              width: 60,
              color: Color.fromARGB(255, 3, 255, 221),
            ),
          ],
        ),
      ),
    );
  }
}


// ROW

// child: Row(
//           mainAxisAlignment: MainAxisAlignment.end,
//           crossAxisAlignment: CrossAxisAlignment.end,
//           children: [
//             Container(
//               height: 60,
//               width: 60,
//               color: Colors.black,
//             ),
//             Container(
//               height: 60,
//               width: 60,
//               color: Colors.red,
//             ),
//             Container(
//               height: 60,
//               width: 60,
//               color: Colors.blue,
//             ),
//             Container(
//               height: 60,
//               width: 60,
//               color: Colors.lightGreen,
//             ),
//             Container(
//               height: 60,
//               width: 60,
//               color: Color.fromARGB(255, 3, 255, 221),
//             ),
//           ],
//         ),



// COLUMN

// child: Column(
//           mainAxisAlignment: MainAxisAlignment.end,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               height: 60,
//               width: 60,
//               color: Colors.black,
//             ),
//             Container(
//               height: 60,
//               width: 60,
//               color: Colors.red,
//             ),
//             Container(
//               height: 60,
//               width: 60,
//               color: Colors.blue,
//             ),
//             Container(
//               height: 60,
//               width: 60,
//               color: Colors.lightGreen,
//             ),
//             Container(
//               height: 60,
//               width: 60,
//               color: Color.fromARGB(255, 3, 255, 221),
//             ),
//           ],
//         ),




// WRAP


// child: Wrap(
//           direction: Axis.vertical,
//           alignment: WrapAlignment.spaceAround,
//           children: [
//             Container(
//               height: 60,
//               width: 60,
//               color: Colors.black,
//             ),
//             Container(
//               height: 60,
//               width: 60,
//               color: Colors.red,
//             ),
//             Container(
//               height: 60,
//               width: 60,
//               color: Colors.blue,
//             ),
//             Container(
//               height: 60,
//               width: 60,
//               color: Colors.lightGreen,
//             ),
//             Container(
//               height: 60,
//               width: 60,
//               color: Color.fromARGB(255, 3, 255, 221),
//             ),
//           ],
//         ),