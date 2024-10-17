import "package:flutter/material.dart";

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Widget"),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                    blurRadius: 10, color: Colors.black, spreadRadius: 10),
              ],
              image: const DecorationImage(
                image: AssetImage(
                  "assets/multiverse.png",
                ),
                fit: BoxFit.cover,
              )),
          height: 200,
          width: 200,
          // child: Image.asset("assets/multiverse.png"),
        ),
      ),
    );
  }
}
