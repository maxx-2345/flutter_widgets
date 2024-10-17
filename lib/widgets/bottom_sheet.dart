import "package:flutter/material.dart";

class BottomSheetwidget extends StatelessWidget {
  const BottomSheetwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Press Me"),
          onPressed: () {
            showModalBottomSheet(
                isDismissible: true,
                enableDrag: true,
                barrierColor: Colors.red,
                elevation: 20,
                context: context,
                builder: (context) {
                  return const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Text("Orange"),
                        subtitle: Text("Maxx"),
                      ),
                      ListTile(
                        title: Text("Apple"),
                        subtitle: Text("Maaz"),
                      ),
                      ListTile(
                        title: Text("Mango"),
                        subtitle: Text("Maaj"),
                      ),
                      ListTile(
                        title: Text("Banana"),
                        subtitle: Text("Maxxxiiiee"),
                      ),
                    ],
                  );
                });
          },
        ),
      ),
    );
  }
}
