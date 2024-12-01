import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Padding")),
      body: Padding(
        padding: ProjectPadding.pagePaddingVertical,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                color: Colors.white,
                height: 400,
                width: 200,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 18, horizontal: 40),
              child: Container(
                color: Colors.deepOrange,
                height: 50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Text("data"),
            )
          ],
        ),
      ),
    );
  }
}


class ProjectPadding {
  static const pagePaddingVertical = const EdgeInsets.symmetric(vertical: 10);
}