import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({super.key});

  @override
  Widget build(BuildContext context) {
    //Stack genelde üst üste bir binme var ise genelde orada Stack vardir!
    return Scaffold(
      backgroundColor: Colors.amber.shade100,
      appBar: AppBar(
        title: const Text("Stack Learn"),
        backgroundColor: Colors.amber.shade600,
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.pink.shade300,
            height: 100,
          ),
          Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                color: Colors.blue.shade300,
                height: 100,
              )),

          //
          Positioned(
              bottom: 0,
              width: 50,
              height: 100,
              child: Container(
                color: Colors.green.shade400,
              )),
          Positioned.fill(
              top: 100,
              child: Container(
                color: Colors.orange.shade400,
              )),
        ],
      ),
    );
  }
}
